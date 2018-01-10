import { exec } from 'cordova';

class LottieSplashscreen {
    static hide(successCallback: any, errorCallback: any) {
        exec(successCallback, errorCallback, 'LottieSplashscreen', 'hide', []);
    }

    static show(location?: string, remote?: boolean, successCallback?: any, errorCallback?: any) {
        exec(successCallback, errorCallback, 'LottieSplashscreen', 'show', [location, remote]);
    }
}

export = LottieSplashscreen;
