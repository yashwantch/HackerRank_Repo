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

// Complete the miniMaxSum function below.
function miniMaxSum(arr) {
    
    var min=0,max=0;
        var sum=0;
        for(var i=0;i<arr.length;i++)
        {
         sum=sum+arr[i];   
        }
        
         min=sum;
        for(var i=0;i<arr.length;i++)
        {
            var temp=sum;
           
            temp=temp-arr[i];
            if(temp>max){
                max=temp;
            }
            if(temp<min){
                min=temp;
            }
        }
        var result = min+" "+max;
        console.log(result);
}

function main() {
    const arr = readLine().split(' ').map(arrTemp => parseInt(arrTemp, 10));

    miniMaxSum(arr);
}
