import Foundation




func homework_6() {
    struct Queue<Element: Equatable> {
        var array = [Element]()
        
        mutating func Enqueue (_ i: Element) {
            array.append(i)
        }
        
        mutating func Dequeue () -> Element {
            return array.removeFirst()
        }
        
        func filter (item: Element) {
            if (array.filter {$0 == item}.count > 0) {
                print("Найден элемент \(item)")
        }
            else {
                print("Указанный элемент \(item) не найден")
            }
        
        }
        
        func printArray () {
            print(array)
        }
        
        subscript (i: Int) -> Element? {
            if (i < array.count) {
                return array[i]
            }
            else {
                return nil
            }
        }
    }
    
    var array = Queue<Int>()
        
    for i in 1...30 {
        array.Enqueue(Int.random(in: 1...i))
    }
    
    print("Урок 6:")
    print("\n")
    print("Добавленные элементы:")
    array.printArray()
    array.filter(item: Int.random(in: 1...30))
    print("\n")
    for i in 1...5 {
        print("Удаленный элемент: \(array.Dequeue())")
    }
    array.printArray()
    array.filter(item: Int.random(in: 1...30))
    print("\n")
    print("Поиск по индексу:")
    for i in 25...35 {
        print(array[Int.random(in: 1...i)])
    }
    print("\n")
    
    
    
    
}
