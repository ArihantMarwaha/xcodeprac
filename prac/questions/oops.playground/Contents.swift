class animal {
    var animalname : String
    
    init(animalname: String) {
        self.animalname = animalname
    }
    
    func makesound(){
        print("A generic sound")
    }
}

class dog : animal {
   var name: String
    
    init(animalname: String,name: String) {
        self.name = name
        super.init(animalname: animalname)
    }
    
    override func makesound() {
        print("Woof Woof")
    }
    
}

var ani = animal(animalname: "Poocha")
var dogoo = dog(animalname: "gugu", name: "Pochi")

ani.makesound()
dogoo.makesound()

//access levels
//private
//file private
//public
//internal
//open

//polymorphism
class Animal {
    func speak() {
        print("Some sound")
    }
}

class Dog: Animal {
    override func speak() {
        print("Woof!")
    }
}

class Cat: Animal {
    override func speak() {
        print("Meow!")
    }
}

let animals: [Animal] = [Dog(), Cat(), Animal()]

for a in animals {
    a.speak()  // Output: Woof! / Meow! / Some sound
}

//protocol
protocol Drawable {
    func draw()
}

class Circle: Drawable {
    func draw() { print("Drawing a circle") }
}

class Square: Drawable {
    func draw() { print("Drawing a square") }
}

let shapes: [Drawable] = [Circle(), Square()]
for shape in shapes {
    shape.draw()
}
