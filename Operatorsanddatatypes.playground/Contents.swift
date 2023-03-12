// Suppose you are creating a simple game with multiple levels. After completing each level, the player receives a score. You will use operators and data types to tally up the total game score based on the player’s performance in each level. You will also compute the current level’s average score.

let levelScore = 10
var gameScore = 0

gameScore += levelScore
print("The games score is \(gameScore).")

var levelBonusScore = 10.0
levelBonusScore = 20

//Output is 20 because levelBonusScore was set as a double w/ 10.0
print("The level's bonus score is \(levelBonusScore).")

gameScore += Int(levelBonusScore) // using type casting
print("The game's final score is \(gameScore).")

let levelLowestScore = 50
let levelHighestScore = 99
let levels = 10

let levelScoreDifference = levelHighestScore - levelLowestScore
let levelAverageScore = levelScoreDifference/levels
let averageLevelScore = Double(levelScoreDifference)/Double(levels)

print("The level's average score is \(levelAverageScore).")
print("The correct level's average score is \(averageLevelScore)")
print(20/5)

