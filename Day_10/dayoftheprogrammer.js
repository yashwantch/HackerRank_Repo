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

// Complete the dayOfProgrammer function below.
function dayOfProgrammer(year) {
    
     var sum = 215;
        var value="";
        var flag = false;
        
    if(year > 1918) { 
        if(year % 400 == 0) {
            flag = true;
        }
        else if(year % 4 == 0) {
            if (year % 100 == 0) {
                flag = false;
            }
            else {
                flag = true;
            }
        }else {
            flag = false;
        }    
        if(flag) {
            sum = sum+29;
        }
        else{
            sum = sum+28;
        }
        var result = 256 - sum;
       value = result+"."+"09"+"."+year;
        
    }//if
    else if(year < 1918) { 
        if( year % 4 == 0) {
            flag=true;
        }
        if(flag) {
            sum = sum+29;
        }
        else{
            sum = sum+28;
        }
        var result = 256 - sum;
        value = result+"."+"09"+"."+year;
    } else{
        value = "26.09.1918";
    }
            
        return value;


}

function main() {
    const ws = fs.createWriteStream(process.env.OUTPUT_PATH);

    const year = parseInt(readLine().trim(), 10);

    const result = dayOfProgrammer(year);

    ws.write(result + '\n');

    ws.end();
}
