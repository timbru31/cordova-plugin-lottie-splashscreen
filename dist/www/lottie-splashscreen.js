"use strict";
var cordova_1 = require("cordova");
var LottieSplashScreen = (function () {
    function LottieSplashScreen() {
    }
    LottieSplashScreen.hide = function () {
        cordova_1.exec(null, null, 'LottieSplashScreen', 'hide', []);
    };
    LottieSplashScreen.show = function (location, remote, width, height) {
        cordova_1.exec(null, null, 'LottieSplashScreen', 'show', [location, remote, width, height]);
    };
    return LottieSplashScreen;
}());
module.exports = LottieSplashScreen;
