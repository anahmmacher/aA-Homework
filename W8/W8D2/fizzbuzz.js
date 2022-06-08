// function fizzbuzz(array)

const arr =[ [1, 3, 5, 7],
    [10, 11, 16, 20],
[23, 30, 34, 50] ]

let flatArray = [].concat.apply([], arr);

console.log(flatArray)