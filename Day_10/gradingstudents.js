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
    inputString = inputString.trim().split('\n').map(str => str.trim());

    main();
});

function readLine() {
    return inputString[currentLine++];
}

/*
 * Complete the gradingStudents function below.
 */
function gradingStudents(grades) {
    /*
     * Write your code here.
     */
    
        var i;
        var round=[grades.length]; 
        for(i=0;i<grades.length;i++)
        {
            if(grades[i]<38){
            round[i]=grades[i];        
        }
        else{
            var temp=grades[i];
            while((temp%5)!=0){       
                temp++;
            }
            if((temp-grades[i])<3){
                round[i]=temp;
        
            }
            else{
            round[i]=grades[i];
            }
         }
        }//for
        return round;

}

function main() {
    const ws = fs.createWriteStream(process.env.OUTPUT_PATH);

    const n = parseInt(readLine(), 10);

    let grades = [];

    for (let gradesItr = 0; gradesItr < n; gradesItr++) {
        const gradesItem = parseInt(readLine(), 10);
        grades.push(gradesItem);
    }

    let result = gradingStudents(grades);

    ws.write(result.join("\n") + "\n");

    ws.end();
}
