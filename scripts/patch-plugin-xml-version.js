const packageJson = require('../package.json');
const conventionalRecommendedBump = require('conventional-recommended-bump');
const semver = require('semver');
const replace = require('replace');

const getNextVersion = currentVersion => {
    return new Promise((resolve, reject) => {
        conventionalRecommendedBump(
            {
                preset: 'angular'
            },
            (err, release) => {
                if (err) {
                    reject(err);
                    return;
                }

                const nextVersion = semver.valid(release.releaseType) || semver.inc(currentVersion, release.releaseType);

                resolve(nextVersion);
            }
        );
    });
};

getNextVersion(packageJson.version)
    .then(version => {
        replace({
            regex: /(id="[\w\.-]+" version=")([\w\.-]+)(")/,
            replacement: `$1${version}$3`,
            paths: ['./plugin.xml'],
            silent: true
        });
    })
    .catch(error => console.log(error));
