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

// Complete the arrayManipulation function below.
function arrayManipulation(n, queries,m) {
    
    
    var result = 0;
        
        var temp = [n];
    
    for(var i=0;i<n;i++){
        temp[i]=0;
        
    }
        
        for(var i = 0; i < m; i++) {
            var lbound = queries[i][0];
            var ubound = queries[i][1];
            var value = queries[i][2];
            
            temp[lbound-1]+=value;
            if(ubound<n) temp[ubound]-=value; 
        }
    
        /*for(int i = 0; i < n; i++) {
            if(temp[i] > result){
                result = temp[i];
            }
        }*/
        var t=0;

        for(var i=0;i<n;i++){
            t += temp[i];
            if(t> result) result=t;
        }

        return result;


}

function main() {
    const ws = fs.createWriteStream(process.env.OUTPUT_PATH);

    const nm = readLine().split(' ');

    const n = parseInt(nm[0], 10);

    const m = parseInt(nm[1], 10);

    let queries = Array(m);

    for (let i = 0; i < m; i++) {
        queries[i] = readLine().split(' ').map(queriesTemp => parseInt(queriesTemp, 10));
    }

    let result = arrayManipulation(n, queries,m);

    ws.write(result + "\n");

    ws.end();
}
