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



function main() {
    const nd = readLine().split(' ');

    const n = parseInt(nd[0], 10);

    const d = parseInt(nd[1], 10);

    const a = readLine().split(' ').map(aTemp => parseInt(aTemp, 10));
    
    var temp = [n];
    var res="";
    //var dov=d%n;
      for (var i = 0; i < n; i++) {
          
          var t=(i + n - d)%n;
          temp[t]=a[i];
          
        /*res=res+(a[(dov+i)%n]).toString()+" ";*/
    }
    
     /*var temp = [n];
    var d1=d;
    var a1=a;
        for(var j = 0; j < d1; j++ )
        {
            var test = a1[0];

            for(var i=0;i<n;i++){
                if(i+1<n){
                temp[i]=a1[i+1];
                }
                else{
                    temp[i]=test;
                }
                
            }
            a1=temp;
        }*/
    
    
    for(var i=0;i<n;i++){
        
        res=res+(temp[i]).toString()+" ";

    }
    console.log(res);

}
