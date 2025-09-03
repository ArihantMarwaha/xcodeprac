import UIKit

//Protocol Inheritance
protocol Vehicle {
    var speed: Int { get set }
    func move()
}

protocol Electric: Vehicle {
    var batteryLevel: Int { get set }
}

struct Tesla: Electric {
    var speed: Int
    var batteryLevel: Int
    
    func move() {
        print("Driving at \(speed) km/h with \(batteryLevel)% battery")
    }
}

var tar : Tesla = Tesla(speed: 34, batteryLevel: 99)

tar.move()

struct honda : Vehicle {
    var speed: Int
    func move(){
        print("HERO HONDA")
    }
}


//Associated Types
protocol APIRequest {
    associatedtype Response
    var endpoint: String { get }
    func decode(_ data: Data) -> Response?
}

// ✅ Implementations
struct UserRequest: APIRequest {
    struct User: Decodable {
        let id: Int
        let name: String
    }
    
    let endpoint = "/user"
    
    func decode(_ data: Data) -> User? {
        try? JSONDecoder().decode(User.self, from: data)
    }
}

struct ProductRequest: APIRequest {
    struct Product: Decodable {
        let id: Int
        let title: String
    }
    
    let endpoint = "/product"
    
    func decode(_ data: Data) -> Product? {
        try? JSONDecoder().decode(Product.self, from: data)
    }
}

@propertyWrapper
struct trim {
    private var trimmed : String = ""
    
    var wrappedValue : String {
        get {trimmed}
        set { trimmed = newValue.trimmingCharacters(in: .whitespaces) }
    }
}

struct user {
    @trim var username : String
}

var hanta : user = user()
hanta.username = "  Arihant    The    great   "
print(hanta.username)


@propertyWrapper
struct hola {
    private var trim : String = ""
    
    var wrappedValue : String {
        
        get {trim}
        set {trim = newValue.lowercased()}

      
    }
    
    var projectedValue : String {
        "the value has been set to \(trim)"
    }
}

struct job{
    @hola var name : String
}

var jobby = job()
jobby.name = "ARIHant"
print(jobby.name)
print(jobby.$name)



