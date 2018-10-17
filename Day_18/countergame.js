'use strict';

const fs = require('fs');

process.stdin.resume();
process.stdin.setEncoding('utf-8');

let inputString = '';
let currentLine = 0;

process.stdin.on('data', inputStdin => {
    inputString += inputStdin;
});

process.stdin.on('end', _ => {
    inputString = inputString.replace(/\s*$/, '')
        .split('\n')
        .map(str => str.replace(/\s*$/, ''));

    main();
});

function readLine() {
    return inputString[currentLine++];
}

// Complete the counterGame function below.
function counterGame(n) {
    
        var c = 0;
        var x = 1;
        
        while(n > 1) {
            var k = 1;
            while(k <= n) {
            k *= 2;
        }
        Math.floor(k /= 2);
            if(k != n) {
                n = n-k;
            }
            else {
                n = Math.floor(n/2);
            }
            c++;
        }
        if(Math.floor(c%2) == 0) {
            return "Richard";
        }
        return "Louise";


}

function main() {
    const ws = fs.createWriteStream(process.env.OUTPUT_PATH);

    const t = parseInt(readLine(), 10);

    for (let tItr = 0; tItr < t; tItr++) {
        const n = parseInt(readLine(), 10);

        let result = counterGame(n);

        ws.write(result + "\n");
    }

    ws.end();
}
