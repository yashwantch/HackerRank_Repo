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

// Complete the closestNumbers function below.
function closestNumbers(arr) {
    
    arr.sort(function(a,b){
        return a-b;
    });
    
     var result = [];
      var difference = 0;
    var min=Number.MAX_VALUE;

        for(var i = 1 ; i < arr.length ; i++)
        {
             difference = arr[i]-arr[i-1];
                if(difference <= min) {
                    if(difference < min)
                        result = [];
                    
                    result.push(arr[i-1]);
                    result.push(arr[i]);
                    
                    min = difference;
                }
        }
            
            
return result;
}

function main() {
    const ws = fs.createWriteStream(process.env.OUTPUT_PATH);

    const n = parseInt(readLine(), 10);

    const arr = readLine().split(' ').map(arrTemp => parseInt(arrTemp, 10));

    let result = closestNumbers(arr);

    ws.write(result.join(" ") + "\n");

    ws.end();
}
