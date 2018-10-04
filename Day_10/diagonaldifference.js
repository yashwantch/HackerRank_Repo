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

// Complete the diagonalDifference function below.
function diagonalDifference(arr) {
    
    var sum=0,s=0;
        
        for(var i=0;i<arr.length;i++)
        {
        for(var j=0;j<arr.length;j++)
            {
            if(i==j)
                {
                sum=sum+arr[i][j];}
        }
    }
    
    
  //  printf("%d",sum);
    
    for(var i=0;i<arr.length;i++)
        {
        s=s+arr[i][arr.length-i-1];
    }
    
    //printf("%d",s);
    
    sum=sum-s;
   sum=Math.abs(sum);
    return sum;



}

function main() {
    const ws = fs.createWriteStream(process.env.OUTPUT_PATH);

    const n = parseInt(readLine(), 10);

    let arr = Array(n);

    for (let i = 0; i < n; i++) {
        arr[i] = readLine().split(' ').map(arrTemp => parseInt(arrTemp, 10));
    }

    const result = diagonalDifference(arr);

    ws.write(result + '\n');

    ws.end();
}
