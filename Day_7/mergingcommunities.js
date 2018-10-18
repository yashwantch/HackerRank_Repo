var n, qc, parents, sizes;

function getRoot(a) {
    var root = a;
    while (root != parents[root]) {
        root = parents[root];
    }
    return root;
}

function getMemberCount(a) {
    return sizes[getRoot(a)];
}

function mergeCommunities(a, b) {
    const aP = getRoot(a);
    const bP = getRoot(b);
    if (aP == bP) return;
    
    if (sizes[aP] < sizes[bP]) {
        parents[aP] = bP;
        sizes[bP] += sizes[aP];
    } else {
        parents[bP] = aP;
        sizes[aP] += sizes[bP];
    }
}

function processData(input) {
    const lines = input.split('\n');
    
    [n] = lines[0].split(' ');
    parents = Array(n + 1);
    sizes = Array(n + 1);
    for (var i = 1; i < n + 1; i++) {
        sizes[i] = 1;
        parents[i] = i;
    }
    
    for (var i = 1; i < lines.length; i++) {
        const q = lines[i].split(' ');
        switch(q[0]) {
            case 'Q': {
                console.log(getMemberCount(q[1]));
                break;
            }
            
            case 'M': {
                mergeCommunities(q[1], q[2]);
                break;
            }
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
