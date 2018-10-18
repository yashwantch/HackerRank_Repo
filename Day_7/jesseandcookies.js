function processData(input) {
    input_arr = input.split("\n").map(function(x) { return x.split(" ").map(Number); });
    var n = input_arr[0][0];
    var k = input_arr[0][1];
    var cookies = new MinHeap();
    for (var i = 0; i < n; i++) {
        cookies.addElem(input_arr[1][i]);
    }
    
    var iterations = 0;
    while(cookies.heap.length > 1 && cookies.getMin() < k) {

        iterations++;
        var least = cookies.getMin();
        cookies.removeElem(least);

        var least2 = cookies.getMin();
        cookies.removeElem(least2);

        var combined = (least + (2*least2));
        cookies.addElem(combined);        
    }
    if (cookies.getMin() >= k) {
        console.log(iterations);
    }
    else
        console.log(-1);
    
} 

function MinHeap() {
    this.heap = [];
}

MinHeap.prototype = {
    constructor: MinHeap,
    addElem : function(elem) {
        var childIndex = this.heap.length;
        this.heap[childIndex] = elem;
        while (childIndex > 0) {
            var parentIndex = Math.floor((childIndex-1)/2);
            if (this.heap[childIndex] < this.heap[parentIndex]) {
                var temp = this.heap[childIndex];
                this.heap[childIndex] = this.heap[parentIndex];
                this.heap[parentIndex] = temp;
            }
            else {
                break;
            }                
            childIndex = parentIndex;
        }
    },
    removeElem : function(elem) {
        var initialLength = this.heap.length;
        var parentIndex;
        for (parentIndex = 0; parentIndex < this.heap.length; parentIndex++) {
            if (this.heap[parentIndex] == elem)
                break;
        }
        while (true) {
            var leftChildIndex = (parentIndex*2)+1;
            var rightChildIndex = leftChildIndex+1;
            var childIndex;
            if (leftChildIndex >= this.heap.length && rightChildIndex >= this.heap.length)
                break;
            else if (leftChildIndex >= this.heap.length || this.heap[leftChildIndex] > this.heap[rightChildIndex])
                childIndex = rightChildIndex;
            else
                childIndex = leftChildIndex;

            this.heap[parentIndex] = this.heap[childIndex];
            parentIndex = childIndex;                
        }            
        //shift elements to left
        if (parentIndex < initialLength-1) {
            this.heap[parentIndex] = this.heap[initialLength-1];
            childIndex = parentIndex;
            while (childIndex > 0) {
                var parentIndex = Math.floor((childIndex-1)/2);
                if (this.heap[childIndex] < this.heap[parentIndex]) {
                    var temp = this.heap[childIndex];
                    this.heap[childIndex] = this.heap[parentIndex];
                    this.heap[parentIndex] = temp;
                }
                else {
                    break;
                }                
                childIndex = parentIndex;
            }
        }
        this.heap.pop();            
    },
    getMin : function() { 
        return (this.heap.length > 0) ? this.heap[0] : false;
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