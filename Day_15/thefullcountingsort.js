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

// Complete the countSort function below.
function countSort(arr) {
    
    
        var hm = new Map();
        var indexes = [];
        var values = [];
        
        for(var i = 0 ; i < arr.length ; i++) {
            var s = arr[i];
            var index = parseInt(s[0]);
            var value =s[1];
            indexes[i] = index;
            values[i] = value;
            
        }
        for(var i = 0 ; i < Math.floor(values.length/2) ; i++){
            values[i] = "-";
        }
        
        for(var i =0 ; i < arr.length ; i++){
            
            if(hm.get(indexes[i])!= null){
                var temp = hm.get(indexes[i]);
                    temp = temp+" "+values[i];
                hm.set(indexes[i],temp);
            }else{
                hm.set(indexes[i],values[i]);
            }
        }
 //   console.log(hm);
    
        //var mapAsc = new Map([...hm.entries()].sort());
    //   console.log(mapAsc);
    var arr1=Array.from(hm);
    arr1.sort(function(a,b)
             {
        return a[0]-b[0]
    });
        
            var result = ""; 
        for(var f = 0 ; f < arr1.length ; f++)
            {
                var arr2 = arr1[f];
                var mvalue = arr2[1];
                result += mvalue+" ";
            }
    console.log(result);
}

function main() {
    const n = parseInt(readLine().trim(), 10);

    let arr = Array(n);

    for (let i = 0; i < n; i++) {
        arr[i] = readLine().replace(/\s+$/g, '').split(' ');
    }

    countSort(arr);
}
