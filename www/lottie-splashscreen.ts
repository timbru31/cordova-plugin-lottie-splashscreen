import { exec } from 'cordova';

class LottieSplashscreen {
    static hide() {
        exec(null as any, null as any, 'LottieSplashscreen', 'hide', []);
    }

    static show(location?: string, remote?: boolean, width?: number, height?: number) {
        exec(null as any, null as any, 'LottieSplashscreen', 'show', [location, remote, width, height]);
    }
}

export = LottieSplashscreen;
