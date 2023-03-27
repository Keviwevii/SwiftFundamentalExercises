// Ultimately, you will code a bank account simulator by creating a valid bank account and then use appropriate programming logic to manage it. You will configure the bank account simulator to check the bank account balance, validate withdrawals from the bank account and monitor deposits into the bank account.

class BankAccountInterface {
    
    var accountType = ""
    
    func greetCustomer() {
        print("Welcome to your virtual bank system.")
    }
    func accountSelection() {
        print("What account would you like to open?")
        print("1. Debit account")
        print("2. Credit account")
    }
    
    
    func createBankAccountType (numberPadKey: Int) {
        print("The selected option is \(numberPadKey).")
            switch numberPadKey {
            case 1:
                accountType = "debit"
            case 2:
                accountType = "credit"
            default:
                print("Invalid input: \(numberPadKey).")
            }
            print("You have opened a \(accountType) account.")
    }
}

//Creating an instance
var testAccount = BankAccountInterface()
testAccount.greetCustomer()

//Using a repeat whiole loop to grab a random int to make the account type and then call the CreateBankAccountType function with the random int
repeat {
    testAccount.accountSelection()
    let numberPadKey = Int.random(in:1...5)
    testAccount.createBankAccountType(numberPadKey: numberPadKey)
} while testAccount.accountType == ""

