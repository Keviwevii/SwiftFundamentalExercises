// Weather apps are handy tools that allow users to review the weather forecast for a specific timeline. For this activity, you will use dictionaries to store the daily temperatures of a specific week.

var weeklyTemperature: Dictionary<String,Int> = [:]

weeklyTemperature = ["Monday": 70, "Tuesday": 75, "Wednesday": 80, "Thursday": 85, "Friday": 90, "Saturday": 95]

print(weeklyTemperature)

// Using force unwrap to add a value to the first key value pair
weeklyTemperature["Monday"]! += 5

print("The temperature on Monday is \(weeklyTemperature["Monday"]!).")

//Checking to see if there is a way for Sunday set, using optional binding
if let temperature = weeklyTemperature["Sunday"] {
    print("The temperature on Sunday is \(temperature).")
} else {
    weeklyTemperature["Sunday"] = 100
    // forced unwrapping
    print("The temperature on Sunday is \(weeklyTemperature["Sunday"]!).")
}

if weeklyTemperature.count == 7 {
    print("You have access to the weather forcast for the whole week!")
    for (key,value) in weeklyTemperature {
        print("The temperature on \(key) is \(value).")
    }
    // Clearing the dictionary
    weeklyTemperature = [:]
    print("Reset weekly temperatures for next week.")
}
