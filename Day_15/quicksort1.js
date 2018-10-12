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

// Complete the quickSort function below.
function quickSort(arr,low,high) {
    
     var middle = low + Math.floor((high - low) / 2);
        var pivot = arr[middle];
 
        var i = low, j = high;
        while (i <= j) {
            while (arr[i] < pivot) {
                i++;
            }
 
            while (arr[j] > pivot) {
                j--;
            }
 
            if (i <= j) {
                var temp = arr[i];
                arr[i] = arr[j];
                arr[j] = temp;
                i++;
                j--;
            }
        }
 
        if (low < j)
            quickSort(arr, low, j);
 
        if (high > i)
            quickSort(arr, i, high);


        return arr;


}

function main() {
    const ws = fs.createWriteStream(process.env.OUTPUT_PATH);

    const n = parseInt(readLine(), 10);

    const arr = readLine().split(' ').map(arrTemp => parseInt(arrTemp, 10));
    
    var low = 0;
    var high = arr.length - 1;

    let result = quickSort(arr,low,high);

    ws.write(result.join(" ") + "\n");

    ws.end();
}
