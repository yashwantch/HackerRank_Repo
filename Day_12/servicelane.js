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

// Complete the serviceLane function below.
function serviceLane(n, cases, width) {
    
    var result = [cases.length];
        var k=0;
        for(var i = 0 ; i < cases.length ; i++) {
            var temp = width[cases[i][0]];
            for(var j = cases[i][0] ; j <= cases[i][1] ; j++){
                if(temp >= width[j]){
                    temp = width[j];
                }
            }
            result[k] = temp;
            k++;
            }
        
        return result;


}

function main() {
    const ws = fs.createWriteStream(process.env.OUTPUT_PATH);

    const nt = readLine().split(' ');

    const n = parseInt(nt[0], 10);

    const t = parseInt(nt[1], 10);

    const width = readLine().split(' ').map(widthTemp => parseInt(widthTemp, 10));

    let cases = Array(t);

    for (let i = 0; i < t; i++) {
        cases[i] = readLine().split(' ').map(casesTemp => parseInt(casesTemp, 10));
    }

    let result = serviceLane(n, cases, width);

    ws.write(result.join("\n") + "\n");

    ws.end();
}
