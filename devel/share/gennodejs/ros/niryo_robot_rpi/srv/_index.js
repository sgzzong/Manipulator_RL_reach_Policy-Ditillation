
"use strict";

let AdvertiseShutdown = require('./AdvertiseShutdown.js')
let SetAnalogIO = require('./SetAnalogIO.js')
let SetIOMode = require('./SetIOMode.js')
let LedBlinker = require('./LedBlinker.js')
let SetDigitalIO = require('./SetDigitalIO.js')
let GetDigitalIO = require('./GetDigitalIO.js')
let ScanI2CBus = require('./ScanI2CBus.js')
let SetPullup = require('./SetPullup.js')
let GetAnalogIO = require('./GetAnalogIO.js')
let ChangeMotorConfig = require('./ChangeMotorConfig.js')

module.exports = {
  AdvertiseShutdown: AdvertiseShutdown,
  SetAnalogIO: SetAnalogIO,
  SetIOMode: SetIOMode,
  LedBlinker: LedBlinker,
  SetDigitalIO: SetDigitalIO,
  GetDigitalIO: GetDigitalIO,
  ScanI2CBus: ScanI2CBus,
  SetPullup: SetPullup,
  GetAnalogIO: GetAnalogIO,
  ChangeMotorConfig: ChangeMotorConfig,
};
