// Create a function that accepts a string as an input. If the string ends in “-s,” then the string should return TRUE to indicate that the word is plural. Otherwise, it should return FALSE. Keep in mind that the function should return a Boolean value (TRUE or FALSE) and not a string value (“true” or “false”). We like this challenge because it’s easy to step up the difficulty if you’re feeling up for it. Your function can include cases that handle irregular plurals — “women,” “children,” “geese,” and so on. You can do this using conditional statements within your function.

func stringCheck(_ word: String) -> Bool {
    return word.hasSuffix("s")
}

print(stringCheck("kitten"))
print(stringCheck("kittens"))
