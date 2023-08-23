
"use strict";

let SetSettings = require('./SetSettings.js')
let GetSettings = require('./GetSettings.js')
let GetAllByType = require('./GetAllByType.js')
let AddFilePath = require('./AddFilePath.js')
let RmFilePath = require('./RmFilePath.js')

module.exports = {
  SetSettings: SetSettings,
  GetSettings: GetSettings,
  GetAllByType: GetAllByType,
  AddFilePath: AddFilePath,
  RmFilePath: RmFilePath,
};
