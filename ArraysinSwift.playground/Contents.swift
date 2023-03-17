// Suppose you are creating a very basic game with multiple levels. The first three levels are free, while players need to pay to access the remaining levels. The game dashboard displays the player's score for each individual level. In this exercise, you will use arrays to store the scores of the levels while the game is played.

var levelScores = [Int]()

if levelScores.count == 0 {
    print("Hi, welcome to the game! Time to play!")
}

let firstLevelScore = 10
levelScores.append(firstLevelScore)
print("Your score for the first level is \(levelScores[0]).")

let levelBonusScore = 40
levelScores[0] += levelBonusScore
print("Your score with the bonus added is \(levelScores[0])")

let freeLevelScores = [20, 30]
levelScores += freeLevelScores

let freeLevels = 3
if levelScores.count == freeLevels {
    print("You have finished playing the free version of the game. You have to buy the game in order to play its full version.")
    levelScores = [Int]()
    print("Game restarted!")
}
