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

// Complete the countingSort function below.
function countingSort(arr) {
    
    var size = Number.MIN_VALUE;
    
    for(var i = 0 ; i < arr.length ; i++){
        
        if(arr[i] > size) {
            size = arr[i];
        }
    }
    
    var result = [size+1];
    for(var i = 0 ; i <= size ; i++) {
        result[i] = 0;
    }
    
    for(var i = 0 ; i< arr.length ; i++) {
        result[arr[i]]++;
    }

    return result;
}

function main() {
    const ws = fs.createWriteStream(process.env.OUTPUT_PATH);

    const n = parseInt(readLine(), 10);

    const arr = readLine().split(' ').map(arrTemp => parseInt(arrTemp, 10));

    let result = countingSort(arr);

    ws.write(result.join(" ") + "\n");

    ws.end();
}
