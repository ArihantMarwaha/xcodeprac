import UIKit

//struct
struct form{
    var name : String
    var age  : Int
    
    func introduction(){
        print("Hi \(name), according to my calcuation your age is \(age)")
    }
}

var arihant = form(name:"Arihant", age: 21)
arihant.introduction()

struct form2 {
    var counter : Int = 0
    
    //computed properties
    var contersq : Int{
        return counter*counter
    }
    
    //mutating function to change the method
    mutating func increment(){
        counter+=1
        const+=3
    }
    
    //ovserve changes to a paticular variable
    var const : Int = 0 {
        willSet{print("The value is going to be set to \(newValue)")}
        didSet{print("the value has been set from \(oldValue) to \(const)")}
    }
    
}

var former = form2()
var toast = form2()
for i in 0..<5{
    former.increment()
    if i%3 == 0 {
        continue
    }
    toast.increment()
}
print(toast.counter)
print(former.counter)
print(toast.contersq)
toast.const *= 3




struct initialise {
    var total : Int
    
    //computed values
    var area  : Int {
        return total*4
    }
    
    init(total totals: Int) {
        total = totals * 34
    }
}

var to = initialise(total: 5)
print(to.total)
print(to.area)

//generics 
func maxValue<T: Comparable>(_ a: T, _ b: T) -> T {
    return a > b ? a : b
}

print(maxValue(10, 20))      // 20
print(maxValue("A", "B"))    // B


protocol Togglable {
    mutating func toggle()
}

enum Switch: Togglable {
    case on, off
    
    mutating func toggle() {
        self = (self == .on) ? .off : .on
    }
}

class Developer {
    var name: String
    init(name: String) { self.name = name }
    deinit { print("\(name) is deallocated") }

    lazy var printName: () -> Void = {
        print("Developer: \(self.name)") // ❌ captures self strongly
    }
}

var dev: Developer? = Developer(name: "Lord Hanta")
dev?.printName()
dev = nil // deinit not called → leak



//study deinit and weak in depth
protocol DownloaderDelegate: AnyObject { // AnyObject → ensures weak possible
    func didFinishDownloading()
}

class Downloader {
    weak var delegate: DownloaderDelegate?   // ✅ must be weak to avoid cycle
    
    func startDownload() {
        print("Downloading...")
        delegate?.didFinishDownloading()
    }
}

class MyViewController: DownloaderDelegate {
    var downloader: Downloader?
    
    func start() {
        downloader = Downloader()
        downloader?.delegate = self  // self points to downloader, downloader points back
        downloader?.startDownload()
    }
    
    func didFinishDownloading() {
        print("Download finished!")
    }
    
    deinit {
        print("MyViewController deallocated")
    }
}

// Usage
var vc: MyViewController? = MyViewController()
vc?.start()
vc = nil // deinit will be called properly ✅


class timers {
    var bore : Timer?
    
    func startTimer() {
        bore = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { [weak self] _ in
            guard let self = self else { return }
            print("Timer tick in \(self)")
        }
    }
    
    deinit {
        print("TimerViewController deallocated")
    }

    
}


var time : timers? = timers()
time=nil

