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

// Complete the cost function below.
function cost(b) {
    
        var low = 0;
        var high = 0;
        var max = 0;
        for (var i = 1; i < b.length; i++) {
            var prev_low = low;
            var prev_high = high;
            low = Math.max(prev_low, high+Math.abs(b[i-1]-1));
            high = Math.max(prev_high+Math.abs(b[i]-b[i-1]), prev_low+Math.abs(b[i]-1));
            max = Math.max(low, high);
        }
    return max;


}

function main() {
    const ws = fs.createWriteStream(process.env.OUTPUT_PATH);

    const t = parseInt(readLine(), 10);

    for (let tItr = 0; tItr < t; tItr++) {
        const n = parseInt(readLine(), 10);

        const B = readLine().split(' ').map(BTemp => parseInt(BTemp, 10));

        let result = cost(B);

        ws.write(result + "\n");
    }

    ws.end();
}
