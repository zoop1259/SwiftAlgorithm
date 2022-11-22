import UIKit

//let sides = [3, 6] //5
let sides = [11, 7] //13


//const min = Math.min(...sides);
//const max1 = Math.max(...sides);
//const max2 = min + max1 - 1;
//return max2 - (max1 - min);

let min = sides.min()!
let max1 = sides.max()!
let max2 = min + max1 - 1;

print(max2 - (max1 - min))

