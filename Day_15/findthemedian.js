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

// Complete the findMedian function below.
function findMedian(arr) {
    
    arr.sort(function(a,b){ return a-b});
    for(var i = 0 ; i < arr.length ; i++) {
        console.log(arr[i]);
    }
    var median = 0;
    if(arr.length % 2 != 0){
        var index = parseInt(Math.floor(arr.length / 2));
        median = arr[index];
    }else {
        var index1 = parseInt(Math.floor(arr.length / 2));
        var index2 = parseInt(Math.ceil(arr.length / 2));
        median = parseInt(Math.floor((arr[index1]+arr[index2]) / 2));
    }

    return median;

}

function main() {
    const ws = fs.createWriteStream(process.env.OUTPUT_PATH);

    const n = parseInt(readLine(), 10);

    const arr = readLine().split(' ').map(arrTemp => parseInt(arrTemp, 10));

    let result = findMedian(arr);

    ws.write(result + "\n");

    ws.end();
}
