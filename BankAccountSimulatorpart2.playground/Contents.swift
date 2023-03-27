// In this exercise, you will practice working with functions and conditional statements to implement the bank account operations for the account you created. You will use these operations when you manage the account in the last exercise of the project. Bank account users can withdraw money from or deposit money in their accounts. You will use functions and conditional statements to handle the different bank account operations logic.

struct BankAccount {
    var debitBalance = 0
    var creditBalance = 0
    let creditLimit = 100
    
    var debitBalanceInfo: String {
        "Debit Balance: $\(debitBalance)"
    }
    
    var availableCredit: Int {
        creditLimit + creditBalance
    }
    
    var creditBalanceInfo: String {
        "Available Credit: $\(availableCredit)"
    }
    
    mutating func debitDeposit(_ amount: Int) {
        debitBalance += amount
        print("Deposited $\(amount). \(debitBalanceInfo)")
    }
    
    mutating func creditDeposit(_ amount: Int) {
        creditBalance += amount
        print("Credit $\(amount). \(creditBalanceInfo)")
        if creditBalance == 0 {
            print("Paid off credit balance.")
        } else if creditBalance > 0 {
            print("Overpaid credit balance.")
        }
    }
    
    mutating func debitWithdraw(_ amount: Int){
        if amount > debitBalance {
            print("Insufficient fund to withdraw $\(amount). \(debitBalanceInfo)")
        } else {
            debitBalance -= amount
            print("Debit withdraw: $\(amount). \(debitBalanceInfo)")
        }
    }
    
    mutating func creditWithdraw (_ amount: Int) {
        if amount > availableCredit {
            print("Insufficient credit to withdraw $\(amount). \(creditBalanceInfo)")
        } else {
            creditBalance -= amount
            print("Credit withdraw: $\(amount). \(creditBalanceInfo)")
        }
    }
}

//Creating a bank account instance
var bankAccount = BankAccount()
print(bankAccount.debitBalanceInfo)

//Depositing $100
bankAccount.debitDeposit(100)

//Withdrawing 20
bankAccount.debitWithdraw(20)

// Testing the debitWithdraw method when I withdraw too much
bankAccount.debitWithdraw(81)

//Checking credit balance
print(bankAccount.creditBalanceInfo)

// Testing the creditWithdraw method when I withdraw too much
bankAccount.creditWithdraw(101)

// Testing the creditWithdraw method with a valid argument
bankAccount.creditWithdraw(100)

// Testing the creditDeposit method
bankAccount.creditDeposit(50)
bankAccount.creditDeposit(50)

// Testing the creditDeposit method when you overpay on the balance
bankAccount.creditDeposit(50)
