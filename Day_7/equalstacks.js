process.stdin.resume();
process.stdin.setEncoding('ascii');

var input_stdin = "";
var input_stdin_array = "";
var input_currentline = 0;

process.stdin.on('data', function (data) {
    input_stdin += data;
});

process.stdin.on('end', function () {
    input_stdin_array = input_stdin.split("\n");
    main();    
});

function readLine() {
    return input_stdin_array[input_currentline++];
}


function main() {
    var n1_temp = readLine().split(' ');
    var n1 = parseInt(n1_temp[0]);
    var n2 = parseInt(n1_temp[1]);
    var n3 = parseInt(n1_temp[2]);
    h1 = readLine().split(' ');
    h1 = h1.map(Number);
    h2 = readLine().split(' ');
    h2 = h2.map(Number);
    h3 = readLine().split(' ');
    h3 = h3.map(Number);
    
    var c1=0,c2=0,c3=0;
    for(var i=0; i<h1.length; i++)
        c1 += h1[i];
    
    for(var i=0; i<h2.length; i++)
        c2 += h2[i];
    
    for(var i=0; i<h3.length; i++)
        c3 += h3[i];
    var i=0,j=0;k=0;
    while((c1 !== c2) || (c2 !==c3)) {
        if((c1 > c2) && (h1.length > i)) {
            c1 -= h1[i];
            i++;
        }else if((c1 < c2) && (h2.length > j)) {
            c2 -= h2[j];
            j++;
        }
        if((c2 > c3) && (h2.length > j)){
            c2 -= h2[j];
            j++;
        }else if((c2 < c3) && (h3.length > k)){
            c3 -=h3[k];
            k++;
        }            
    }
    if((c1==c2) && (c2 == c3))
        console.log(c1);
    

}