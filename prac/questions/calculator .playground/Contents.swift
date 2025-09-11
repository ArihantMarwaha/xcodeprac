import UIKit

func add (_ inp1: Int , _ inp2: Int)-> Int{
    return inp1+inp2
}

func multi (_ inp1: Int , _ inp2: Int)-> Int{
    return inp1*inp2
}

func sub (_ inp1: Int , _ inp2: Int)-> Int{
    return inp1-inp2
}

func div (_ inp1: Int , _ inp2: Int)-> Int{
    return inp1/inp2
}

func mod (_ inp1: Int , _ inp2: Int)-> Int{
    return inp1%inp2
}

var operation: (Int,Int)-> Int = add
print(operation(1,2))
operation = multi(_:_:)
print(operation(4,2))
operation = div(_:_:)
print(operation(9,3))
operation = sub(_:_:)
print(operation(5,3))
