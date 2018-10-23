#!/usr/bin/env node

var fs = require('fs');

var xcconfigFile = 'platforms/ios/cordova/build.xcconfig';
var xcconfigFileContent = fs.readFileSync(xcconfigFile, 'utf-8');
var codeSignEntitlementsIndex = xcconfigFileContent.search(/^\s?CODE_SIGN_ENTITLEMENTS/gm);

if (codeSignEntitlementsIndex !== -1) {
    var updatedXcconfig = xcconfigFileContent.slice(0, codeSignEntitlementsIndex) + '// [CB-12212] ' + xcconfigFileContent.slice(codeSignEntitlementsIndex);
    fs.writeFileSync(xcconfigFile, updatedXcconfig, 'utf-8');
}
