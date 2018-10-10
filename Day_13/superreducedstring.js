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

// Complete the superReducedString function below.
function superReducedString(s) {
    
    
        var result ="";
         for(var i = 0; i < s.length; i++){
              if(s.charAt(i) === s.charAt(i+1) && s !== ""){
                    s = s.substring(0, i) + s.substring(i + 2, s.length);
                    i = -1;
              }   
    }
    if(s === "") {
        result ="Empty String";
    }else {
        result = s;
    }
 

            return result;


}

function main() {
    const ws = fs.createWriteStream(process.env.OUTPUT_PATH);

    const s = readLine();

    const result = superReducedString(s);

    ws.write(result + '\n');

    ws.end();
}
