import UIKit

//MARK: - Access Control

//Open :-
//Highest level, only for classes & class members.
open class Animal {
    func sound(){
        print("Animal sound")
    }
}

class formal : Animal{
    override func sound() {
        print("WOOF WOOF!")
    }
}

var total : Animal = formal() //forced typecasting
total.sound()


// public :- Can be accessed outside the module, but cannot be subclassed or overridden there.
public class Vehicle {
    public func drive() {
        print("Driving...")
    }
}

var car : Vehicle = Vehicle()
car.drive()

//internal{Defualt} : Accessible anywhere inside the same module/project, not outside.
internal struct Helper {
    static func doSomething() { print("Helping...") }
}


//fileprivate: Only accessible inside the same file.

class BankAccount {
    private var balance = 0
    
    fileprivate func deposit(_ amount: Int) {
        balance += amount
    }
}

// In same file
extension BankAccount {
    func rewardBonus() {
        deposit(100) // allowed
    }
    
    func show(){
        print(balance)
    }
}


var bank : BankAccount = BankAccount()
bank.deposit(300)
bank.rewardBonus()
bank.show()

//private : accessible only inside the same scope (class/struct/extension).
class User {
    private var password = "secret123"
    
    func checkPassword(_ input: String) -> String {
        if input.isEmpty{return "The password is empty"}
        else if input == password{
            return "The password is correct"
        }
        else{
            return "Password is incorrect"
        }
    }
}


var pass : User = User()
print(pass.checkPassword(""))
print(pass.checkPassword("wrong password"))
print(pass.checkPassword("secret123"))
