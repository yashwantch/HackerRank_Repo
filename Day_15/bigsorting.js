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

// Complete the bigSorting function below.
function bigSorting(unsorted) {
    
   
        
        unsorted.sort(function isSort(first, second) {
    
    if (first.length == second.length) {
            if(first > second) {
                return 1;
            }else if(first == second) {
                     return 0;
             }else{
                 return -1;
             }
        }

        return first.length - second.length;  
});


        return unsorted;
}
function isSort(first, second) {
    
    if (first.length == second.length) {
            // if(first > second) {
            //     return 1;
            // }else if(first == second) {
            //          return 0;
            //  }else{
            //      return -1;
            //  }
           return first.localeCompare(second);
        }

        return first.length - second.length;  
}

function main() {
    const ws = fs.createWriteStream(process.env.OUTPUT_PATH);

    const n = parseInt(readLine(), 10);

    let unsorted = [];

    for (let i = 0; i < n; i++) {
        const unsortedItem = readLine();
        unsorted.push(unsortedItem);
    }

    let result = bigSorting(unsorted);

    ws.write(result.join("\n") + "\n");

    ws.end();
}
