"use strict";
var cordova_1 = require("cordova");
var LottieSplashscreen = (function () {
    function LottieSplashscreen() {
    }
    LottieSplashscreen.hide = function (successCallback, errorCallback) {
        cordova_1.exec(successCallback, errorCallback, 'LottieSplashscreen', 'hide', []);
    };
    LottieSplashscreen.show = function (location, remote, successCallback, errorCallback) {
        cordova_1.exec(successCallback, errorCallback, 'LottieSplashscreen', 'show', [location, remote]);
    };
    return LottieSplashscreen;
}());
module.exports = LottieSplashscreen;
