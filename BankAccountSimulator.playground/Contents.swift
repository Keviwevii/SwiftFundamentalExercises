// Ultimately, you will code a bank account simulator by creating a valid bank account and then use appropriate programming logic to manage it. You will configure the bank account simulator to check the bank account balance, validate withdrawals from the bank account and monitor deposits into the bank account.

class BankAccountInterface {
    
    func GreetCustomer() {
        print("Welcome to your virtual bank system.")
    }
    func AccountSelection() {
        print("What account would you like to open?")
        print("1. Debit account")
        print("2. Credit account")
    }
    
    var accountType = ""
    
    func CreateBankAccountType (numberPadKey: Int) {
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

var testAccount = BankAccountInterface()
testAccount.GreetCustomer()
testAccount.AccountSelection()
testAccount.CreateBankAccountType(numberPadKey: 2)
