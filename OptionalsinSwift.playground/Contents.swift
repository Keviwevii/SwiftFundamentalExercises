// Suppose you are creating an app that requires a password and a passcode for users to sign in. To achieve this, you will use optionals, the forced unwrapping operator, and simple and multiple optional bindings to generate passcodes from passwords and check if the generated passcodes are valid.


var password = "hello world"
let passcode = Int(password)
// optional binding
if let code = passcode {
    print("The passcode is \(code).")
} else {
    print("Invalid passcode!")
}

//Forced unwrapping the passcode optional
//print(passcode!)

//Here we are using optional binding to see if the passcode has a value. If it does we set the value to code and accessCode is that value.
let accessCode: Int?
if let code = passcode {
    accessCode = code
} else {
    accessCode = 1111
}
print("The passcode of the app is \(accessCode).")

let firstPassword = "hello"
let secondPassword = "world"

if let firstPasscode = Int(firstPassword), let secondPasscode = Int(secondPassword) {
    print("The first passcode for the app is \(firstPasscode). The second passcode for the app is \(secondPasscode).")
}
