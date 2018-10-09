'use strict';

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

// Complete the matrixRotation function below.
function matrixRotation(matrix, r, m, n) {
    
    
    var numRings = Math.min(m,n)/2;
    
    for(var i = 0; i < numRings; i++) {
        var numRotations = r % (2*(m + n - 4*i) - 4);
        for(var rotation = 0; rotation < numRotations; rotation++) {
            for(var j = i; j < n-i-1; j++) {
                var tmp = matrix[i][j];
                matrix[i][j] = matrix[i][j+1];
                matrix[i][j+1] = tmp;
            }
            for(var j = i; j < m-i-1; j++) {
                var tmp = matrix[j][n-i-1];
                matrix[j][n-i-1] = matrix[j+1][n-i-1];
                matrix[j+1][n-i-1] = tmp;
            }
            for(var j = n-i-1; j > i; j--) {
                var tmp = matrix[m-i-1][j];
                matrix[m-i-1][j] = matrix[m-i-1][j-1];
                matrix[m-i-1][j-1] = tmp;
            }
            for(var j = m-i-1; j > i+1; j--) {
                var tmp = matrix[j][i];
                matrix[j][i] = matrix[j-1][i];
                matrix[j-1][i] = tmp;
            }
        }
    }
    var s="";
    for(var i = 0; i < m; i++) {
        s="";
        for(var j = 0; j < n; j++) {
            s=s+matrix[i][j]+" ";
        }
      console.log(s);
    }


}

function main() {
    const mnr = readLine().replace(/\s+$/g, '').split(' ');

    const m = parseInt(mnr[0], 10);

    const n = parseInt(mnr[1], 10);

    const r = parseInt(mnr[2], 10);

    let matrix = Array(m);

    for (let i = 0; i < m; i++) {
        matrix[i] = readLine().replace(/\s+$/g, '').split(' ').map(matrixTemp => parseInt(matrixTemp, 10));
    }

    matrixRotation(matrix, r, m , n);
}
