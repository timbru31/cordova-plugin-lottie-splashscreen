"use strict";
var cordova_1 = require("cordova");
var LottieSplashscreen = (function () {
    function LottieSplashscreen() {
    }
    LottieSplashscreen.hide = function () {
        cordova_1.exec(null, null, 'LottieSplashscreen', 'hide', []);
    };
    LottieSplashscreen.show = function (location, remote, width, height) {
        cordova_1.exec(null, null, 'LottieSplashscreen', 'show', [location, remote, width, height]);
    };
    return LottieSplashscreen;
}());
module.exports = LottieSplashscreen;
