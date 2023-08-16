const packageJson = require('../package.json');
const replace = require('replace');

const version = packageJson.version;

replace({
    regex: /(id="[\w\.-]+" version=")([\w\.-]+)(")/,
    replacement: `$1${version}$3`,
    paths: ['./plugin.xml'],
    silent: true,
});
