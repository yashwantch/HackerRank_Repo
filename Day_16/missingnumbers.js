'use strict';

const fs = require('fs');

process.stdin.resume();
process.stdin.setEncoding('utf-8');

let inputString = '';
let currentLine = 0;

process.stdin.on('data', inputStdin => {
    inputString += inputStdin;
});

process.stdin.on('end', function() {
    inputString = inputString.replace(/\s*$/, '')
        .split('\n')
        .map(str => str.replace(/\s*$/, ''));

    main();
});

function readLine() {
    return inputString[currentLine++];
}

// Complete the missingNumbers function below.
function missingNumbers(arr, brr) {
    
        arr.sort(function(a,b){ return a-b});
        brr.sort(function(a,b){ return a-b});
        
        var k = 0;
        var out = new Map();

        
        
        for(var i = 0 ; i < arr.length ; i++) {
            
            if(out.has(arr[i])) {
                
                out.set(arr[i], out.get(arr[i])+1);
            }else {
                out.set(arr[i], 1);
            }
        }
        
        for(var i = 0 ; i < brr.length ; i++) {
            
            if(out.has(brr[i])) {
                
                out.set(brr[i], out.get(brr[i])-1);
            }else {
                out.set(brr[i], 1);
            }
        }
        var result = [];
        var arr1=Array.from(out);
    
    for(var i = 0 ; i < arr1.length ; i++) {
        if(arr1[i][1]!=0){
            result.push(arr1[i][0]);
        }
    }
    
    result.sort(function(a,b){ return a-b});
        

        return result;


}

function main() {
    const ws = fs.createWriteStream(process.env.OUTPUT_PATH);

    const n = parseInt(readLine(), 10);

    const arr = readLine().split(' ').map(arrTemp => parseInt(arrTemp, 10));

    const m = parseInt(readLine(), 10);

    const brr = readLine().split(' ').map(brrTemp => parseInt(brrTemp, 10));

    const result = missingNumbers(arr, brr);

    ws.write(result.join(' ') + '\n');

    ws.end();
}
