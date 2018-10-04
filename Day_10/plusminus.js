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

// Complete the plusMinus function below.
function plusMinus(arr) {

    var p=0,ne=0,z=0;
        
        for(var i=0;i<arr.length;i++)
        {
         if(arr[i]>0)
             {p=p+1;}
        
        else if(arr[i]<0)
            {ne=ne+1;}
        else
            {z=z+1;}
    }
    
    p=p/arr.length;
    ne=ne/arr.length;
    z=z/arr.length;
    
    console.log(p.toPrecision(6));
    console.log(ne.toPrecision(6));
    console.log(z.toPrecision(6));

}

function main() {
    const n = parseInt(readLine(), 10);

    const arr = readLine().split(' ').map(arrTemp => parseInt(arrTemp, 10));

    plusMinus(arr);
}
