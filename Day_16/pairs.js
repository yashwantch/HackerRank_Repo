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



function binarySearch(arr, l, r, x) 
    { 
        if (r>=l) 
        { 
            var mid = Math.floor(l + (r - l)/2); 
  
           
            if (arr[mid] == x) { 
               return true; 
            }
  
            
            if (arr[mid] > x) {
               return binarySearch(arr, l, mid-1, x);
            }
            else{
            return binarySearch(arr, mid+1, r, x);
            }
        }  
        return false; 
    } 

// Complete the pairs function below.
function pairs(k, arr) {
    
         var count = 0;
         arr.sort(function(a,b){ return a-b});
        
        for(var i = 0 ; i < arr.length ; i++) {
            
            if(binarySearch(arr, i+1 , arr.length-1, arr[i] + k)) {
                     count++;   
            }
        }

        return count;


}

function main() {
    const ws = fs.createWriteStream(process.env.OUTPUT_PATH);

    const nk = readLine().split(' ');

    const n = parseInt(nk[0], 10);

    const k = parseInt(nk[1], 10);

    const arr = readLine().split(' ').map(arrTemp => parseInt(arrTemp, 10));

    let result = pairs(k, arr);

    ws.write(result + "\n");

    ws.end();
}
