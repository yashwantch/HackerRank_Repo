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

// Complete the gamingArray function below.
function gamingArray(arr) {
    
        var turns = 0;
        var max = 0;
        var n = arr.length; 
        for (var i=0; i<n; i++) {
            if (max < arr[i]) {
                max = arr[i];
                turns++;
            }
        }
        if (turns%2 == 0) {
            return 'ANDY';
        } else {
            return 'BOB';
        }


}

function main() {
    const ws = fs.createWriteStream(process.env.OUTPUT_PATH);

    const g = parseInt(readLine(), 10);

    for (let gItr = 0; gItr < g; gItr++) {
        const arrCount = parseInt(readLine(), 10);

        const arr = readLine().split(' ').map(arrTemp => parseInt(arrTemp, 10));

        let result = gamingArray(arr);

        ws.write(result + "\n");
    }

    ws.end();
}
