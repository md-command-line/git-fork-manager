const { execSync } = require('child_process');
// stderr is sent to stdout of parent process
// // you can set options.stdio if you want it to go elsewhere

let test = JSON.parse(`${execSync("curl -s 'https://api.github.com/repos/michaeldimmitt/gh'")}`)
console.log(typeof test)

console.log(test);

