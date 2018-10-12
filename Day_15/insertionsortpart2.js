'use strict';

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

// Complete the insertionSort2 function below.
function insertionSort2(n, arr) {
    
    var n = arr.length;  
        for (var j = 1; j < n; j++) {  
            var key = arr[j];  
            var i = j-1;  
            while ( (i > -1) && ( arr [i] > key ) ) {
                arr [i+1] = arr [i]; 
                i--;  
                
               
            }  
            arr[i+1] = key;  
        console.log(arr.toString().split(",").join(" "));
        }  
   


}

function main() {
    const n = parseInt(readLine(), 10);

    const arr = readLine().split(' ').map(arrTemp => parseInt(arrTemp, 10));

    insertionSort2(n, arr);
}
