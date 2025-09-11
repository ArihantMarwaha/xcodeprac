import Cocoa

actor BankAccount {
    private var balance: Int = 0
    
    func deposit(amount: Int) {
        balance += amount
        print("Deposited \(amount). Balance = \(balance)")
    }
    
    func withdraw(amount: Int) {
        if balance >= amount {
            balance -= amount
            print("Withdrew \(amount). Balance = \(balance)")
        } else {
            print("❌ Not enough balance to withdraw \(amount)")
        }
    }
    
    func getBalance() -> Int {
        balance
    }
}

let account = BankAccount()

Task {
    await account.deposit(amount: 100)
    await account.withdraw(amount: 40)
    await account.withdraw(amount: 70)
    print("Final Balance =", await account.getBalance())
}

