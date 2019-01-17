#!/usr/bin/env node

var fs = require('fs');

var podfile = 'platforms/ios/Podfile';
fs.readFile(podfile, function(readError, _data) {
    if (readError) {
        console.error(readError);
        throw readError;
    }

    var data = _data.toString();
    if (data.indexOf('use_frameworks!') === -1) {
        data = data.replace("pod 'lottie-ios'", "use_frameworks!\n\tpod 'lottie-ios'");
    }

    fs.writeFileSync(podfile, data);
});
