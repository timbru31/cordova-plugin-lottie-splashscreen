const fs = require('fs');

const xcconfigFile = 'platforms/ios/cordova/build.xcconfig';
const xcconfigFileContent = fs.readFileSync(xcconfigFile, 'utf-8');
const codeSignEntitlementsIndex = xcconfigFileContent.search(/^\s?CODE_SIGN_ENTITLEMENTS/gm);

if (codeSignEntitlementsIndex !== -1) {
    const updatedXcconfig = xcconfigFileContent.slice(0, codeSignEntitlementsIndex) + '// [CB-12212] ' + xcconfigFileContent.slice(codeSignEntitlementsIndex);
    fs.writeFileSync(xcconfigFile, updatedXcconfig, 'utf-8');
}
