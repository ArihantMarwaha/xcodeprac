import UIKit

enum error: String{
    case toomuhigh = "The current value is very less"
    case toomuchless = "The current value is too less"
    case notfound = "the given format is not supported"
    case ball , straw , hope , fallbroke
}

var ball : error
ball = .toomuhigh

switch ball{
case .toomuhigh:
    print(ball.rawValue)
    fallthrough
case .toomuchless:
    print(error.toomuchless.rawValue)
default:
    print("\(error.notfound.rawValue)")
}

func increment(_ inp : Int)->Int{
    return inp*5
}

enum Result {
    case success(data: String)
    case failure(error: String)
}

let response = Result.success(data: "User found")

switch response {
case .success(let data):
    print("Success with data: \(data)")
case .failure(let error):
    print("Failed with error: \(error)")
}



enum errortypes : Error {
    case toomuch
    case tooless
}

func readfiles (_ name : String) throws -> String {
    
    if name == ""{
        throw errortypes.tooless
    }
    return "The file was read sucessfully"
    
}

do {
    let filerpint = try readfiles("hello.txt")
    print(filerpint)
} catch errortypes.tooless {
    print("File not found")
}

enum makes : Error{
    case fileerror
    case boss,hope,days
}

