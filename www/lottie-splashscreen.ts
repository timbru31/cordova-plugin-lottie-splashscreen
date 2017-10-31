import { exec } from 'cordova';

class LottieSplashscreen {
    static hide(successCallback: any, errorCallback: any) {
        exec(successCallback, errorCallback, 'LottieSplashscreen', 'hide', []);
    }

    static show(successCallback: any, errorCallback: any) {
        exec(successCallback, errorCallback, 'LottieSplashscreen', 'hide', []);
    }
}

export = LottieSplashscreen;
