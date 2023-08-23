
"use strict";

let GetProgram = require('./GetProgram.js')
let ExecuteProgram = require('./ExecuteProgram.js')
let SetProgramAutorun = require('./SetProgramAutorun.js')
let GetProgramList = require('./GetProgramList.js')
let GetProgramAutorunInfos = require('./GetProgramAutorunInfos.js')
let ManageProgram = require('./ManageProgram.js')

module.exports = {
  GetProgram: GetProgram,
  ExecuteProgram: ExecuteProgram,
  SetProgramAutorun: SetProgramAutorun,
  GetProgramList: GetProgramList,
  GetProgramAutorunInfos: GetProgramAutorunInfos,
  ManageProgram: ManageProgram,
};
