function processData(input) {
    var inputArray = input.split('\n');
    var queue = [];
    for(var i = 1 ; i <= inputArray[0] ; i++){
        var type = inputArray[i][0];
        switch(type){
            case '1' : queue.push(Number(inputArray[i].slice(2)));break;
            case '2' : queue.shift();break;
            case '3' : console.log(queue[0]);break;
            default : break;
        }
    }
}

process.stdin.resume();
process.stdin.setEncoding("ascii");
_input = "";
process.stdin.on("data", function (input) {
    _input += input;
});

process.stdin.on("end", function () {
   processData(_input);
});
