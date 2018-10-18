const _ = require('lodash')
const w = process.stdout;


const processData = function (input) {
  var queries = input.split('\n').slice(1)
  var arr = []
  _.each(queries, q => {
    if (q.startsWith('1')) {
      var newItem = q.split(' ').map(_.parseInt)[1]
      var index = _.sortedIndex(arr, newItem)
      arr.splice(index, 0, newItem)
    } else if (q.startsWith('2')) {
      var removedItem = q.split(' ').map(_.parseInt)[1]
      _.remove(arr, x => x === removedItem)
    } else {
      console.log(_.head(arr));
    }
  })
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
