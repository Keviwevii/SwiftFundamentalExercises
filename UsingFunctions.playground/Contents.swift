// Suppose you are creating a role-playing game where the protagonist is a pirate. The aim of the game is to journey across the seven seas and accumulate gold bars along the way. In this exercise, you will create a function to unlock treasure chests. Each time a treasure chest is unlocked, the player's gold bar inventory will increment by 100.

var goldBars = 0

func unlockTreasureChest(inventory: Int) -> Int {
    inventory + 100
}

goldBars = unlockTreasureChest(inventory: goldBars)
goldBars = unlockTreasureChest(inventory: goldBars)
goldBars = unlockTreasureChest(inventory: goldBars)

print(goldBars)
