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

// Complete the weightedUniformStrings function below.
function weightedUniformStrings(s, queries) {
    
        var hs= [];
        var prev = '';
        var weight = 0;
        var result = [queries.length];
        for(var i = 0 ; i < s.length ; i++){
            if(s.charAt(i)==prev){
                weight = weight + Math.abs(s.charCodeAt(i)-97+1);
            }
            else{
                weight = Math.abs(s.charCodeAt(i)-97+1);
            }
            hs.push(weight);
            prev=(s.charAt(i));
        }
    console.log(hs);
        
        for(var i = 0 ; i < queries.length ; i++){
            if(hs.includes(queries[i])) {
                result[i] = "Yes";
            }else {
                result[i] = "No";
            }
        }


        return result;


}

function main() {
    const ws = fs.createWriteStream(process.env.OUTPUT_PATH);

    const s = readLine();

    const queriesCount = parseInt(readLine(), 10);

    let queries = [];

    for (let i = 0; i < queriesCount; i++) {
        const queriesItem = parseInt(readLine(), 10);
        queries.push(queriesItem);
    }

    let result = weightedUniformStrings(s, queries);

    ws.write(result.join("\n") + "\n");

    ws.end();
}
