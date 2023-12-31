#!/usr/bin/env python3

# read_custom_value.py
# Copyright (C) 2018 Niryo
# All rights reserved.
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

import rospy
import argparse

from ttl_driver.srv import ReadCustomValue

if __name__ == '__main__':
    rospy.init_node("read_custom_value")

    # 1. Parse args
    parser = argparse.ArgumentParser(description='Read custom value from a Dynamixel motor during Ned runtime')

    parser.add_argument('--id', type=int, required=True, help='Motor ID')
    parser.add_argument('--address', type=int, required=True, help='Register address')
    parser.add_argument('--size', type=int, required=True, help='Size(bytes) of the value to send (1,2 or 4)')

    args = parser.parse_args()

    # 2. Call ROS Service
    service_name = "/niryo_robot/ttl_driver/read_custom_value"

    try:
        rospy.wait_for_service(service_name, 1.0)
    except rospy.ROSException as e:
        rospy.logwarn(e)
        rospy.logwarn("Check that Ned ROS stack is running")
        exit()

    try:
        read_cmd = rospy.ServiceProxy(service_name, ReadCustomValue)
        value = 0
        response = read_cmd(args.id, args.address, args.size)
        rospy.loginfo(response.message)
        rospy.loginfo("Value: %d", response.value)
    except rospy.ServiceException as e:
        rospy.logwarn(e)
        exit()
