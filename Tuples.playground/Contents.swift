// For this activity, suppose you are creating a basic login feature for a banking app. You will use tuples to store the credentials for logging into the banking app.

let credentials = ("",-1111)

if credentials.0 == "" || credentials.1 < 0 {
    print("Invalid credentials.")
} else {
    print("The username is \(credentials.0). The password is \(credentials.1).")
}

let fullCredentials = (password: "pass",passcode: 1111)

if fullCredentials.password == "" || fullCredentials.passcode < 0 {
    print("Invalid credentials!")
} else {
    print("The password is \(fullCredentials.password). The passcode is \(fullCredentials.passcode).")
}
