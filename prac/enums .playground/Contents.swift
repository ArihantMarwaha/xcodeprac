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
