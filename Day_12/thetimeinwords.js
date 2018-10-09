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

// Complete the timeInWords function below.
function timeInWords(h, m) {
    
     var nums =["","one","two","three","four","five","six","seven",
       "eight","nine","ten","eleven","twelve","thirteen","fourteen",
       "quarter","sixteen","seventeen","eighteen","nineteen", "twenty",
       "twenty one", "twenty two", "twenty three", "twenty four", "twenty five",
       "twenty six", "twenty seven", "twenty eight", "twenty nine"];
          
           var result =""; 
    if(m == 0) {
        result = nums[h] + " o\' clock";
    }else if(m > 30) {
        if(m == 45){
            result = ("quarter to " + nums[h + 1]);
        }
        else{
            result = (nums[(60 - m)] + " minutes to " + nums[h + 1]);
        }
    }else if(m < 30){
        if(m == 15){
            result = ("quarter past " + nums[h]);
        }
        else{
            if(m<10){
            result = (nums[m] + " minute past " + nums[h]);    
            }
            else{
            result = (nums[m] + " minutes past " + nums[h]);
            }
        }
    }else{
        result = ("half past " + nums[h]);
    }
        return result;


}

function main() {
    const ws = fs.createWriteStream(process.env.OUTPUT_PATH);

    const h = parseInt(readLine(), 10);

    const m = parseInt(readLine(), 10);

    let result = timeInWords(h, m);

    ws.write(result + "\n");

    ws.end();
}
