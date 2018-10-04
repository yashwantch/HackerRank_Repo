'use strict';

const fs = require('fs');

process.stdin.resume();
process.stdin.setEncoding('utf-8');

let inputString = '';
let currentLine = 0;

process.stdin.on('data', function(inputStdin) {
    inputString += inputStdin;
});

process.stdin.on('end', function() {
    inputString = inputString.split('\n');

    main();
});

function readLine() {
    return inputString[currentLine++];
}

// Complete the compareTriplets function below.
function compareTriplets(a, b) {
    
    var a0 = parseInt(a[0]);
    var a1 = parseInt(a[1]);
    var a2 = parseInt(a[2]);
 
    var b0 = parseInt(b[0]);
    var b1 = parseInt(b[1]);
    var b2 = parseInt(b[2]);
    
          var alice=0,bob=0;
    
    if(a0>b0)
        {
        alice=alice+1;
        
    }
    else if(b0>a0)
        {
         bob=bob+1;
    }
    else
        {
    ;    
    }
    if(a1>b1)
        {
        alice=alice+1;
        
    }
    else if(b1>a1)
        {
         bob=bob+1;
    }
    else
        {
    ;    
    }
    
    if(a2>b2)
        {
        alice=alice+1;
        
    }
    else if(b2>a2)
        {
         bob=bob+1;
    }
    else
        {
    ;    
    }
    var result = [];
        result[0]= alice;
        result[1]=bob;
    return result;
}

function main() {
    const ws = fs.createWriteStream(process.env.OUTPUT_PATH);

    const a = readLine().replace(/\s+$/g, '').split(' ').map(aTemp => parseInt(aTemp, 10));

    const b = readLine().replace(/\s+$/g, '').split(' ').map(bTemp => parseInt(bTemp, 10));

    const result = compareTriplets(a, b);
    ws.write(result.join(' ') + '\n');

    ws.end();
}
