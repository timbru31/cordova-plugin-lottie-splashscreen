var exec = require('cordova/exec');

function LottieSplashscreen() {
}

LottieSplashscreen.prototype.hide = function (successCallback, errorCallback) {
  exec(successCallback, errorCallback, 'LottieSplashscreen', 'hide', []);
};

LottieSplashscreen.prototype.show = function (successCallback, errorCallback) {
  exec(successCallback, errorCallback, 'LottieSplashscreen', 'show', []);
};

LottieSplashscreen = new LottieSplashscreen();
module.exports = LottieSplashscreen;
