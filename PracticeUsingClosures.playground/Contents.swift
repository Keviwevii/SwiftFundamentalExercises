// You want to pass around the unlocking treasure chest instructions in your codebase. To extend this functionality, you will abstract the instructions into a closure. A closure allows you to save instructions to a variable/constant. You will use a constant instead of a variable because you only need to assign the closure once in this exercise. With the functionality contained in a constant, you can pass around the constant like any other constant. In addition to executing blocks of code, you can save a closure in a variable/constant. Thus, making a closure more versatile than a function. Saving a closure inside a variable/constant is an example showcase of its versatility.

var goldBars = 0


//Creating a closure to add 100 to goldBars each time it is called.
let unlockTreasureChest = {(inventory: inout Int) -> () in
    inventory += 100
}

unlockTreasureChest(&goldBars)
print(goldBars)
