import Foundation
import UIKit

//var a = 5
//var b = 2
//let c = a % b

//1. Написать функцию, которая определяет, четное число или нет.

func adv1( a: Int) -> Bool{
    if a % 2 == 0 {
//        print("\(a) чётное число")
        return true
    } else {
//        print("\(a) не чётное число")
        return false
    }
}
print(adv1)

print("/////////")
//2. Написать функцию, которая определяет, делится ли число без остатка на 3.

func adv2(_ a:Int) -> Bool{
    if a % 3 ==  0 {
//        print("\(a) делится на 3")
        return true
    } else {
//        print("\(a) не делится на 3")
        return false
    }
}
print(adv2(9))

print("/////////")
//3. Создать возрастающий массив из 100 чисел.

var hundredArray = [Int] (1...100)
print(hundredArray)
//for key in (1...100){
//    print(key)
//}

print("/////////")
//4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

var array = Array(0...100)

var index = 0
while index < array.count {
    if array[index] % 2 == 0 || array[index] % 3 != 0 {
        array.remove(at: index)
        index -= 1
    }
    index += 1
    print(array)
    }


print("/////////")
//5. * Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 100 элементов.
func adv5(_ n:Int) -> [Int]{
    var result = [0]
    var prevInt = 1
    var rint = 0
    for _ in 1...n{
        rint += prevInt
        prevInt = rint - prevInt
        result.append( rint )
    }
    return result
}
print(adv5(60))

//func isPrime(number: Int) -> Bool {
//   //right below
//    let maxDivider = Int(sqrt(Double(number)))
//    //let n = number > 1 && !(2...maxDivider).contains { number % $0 == 0 }
//    //print(n)
//    return number > 1 && !(2...maxDivider).contains { number % $0 == 0 }
//}
/*var i = 1
for k in 1...100{
    if isPrime(number: i){
        print(i)
    }
    i += 1
}*/
//isPrime(number: 3)


// Начало третьего урока

// 3. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.
enum CarAction {
    case engineStart
    case engineOff
    case openedWindows
    case closedWindows
    case volumeFilled(volume: Int)
}
// 1. Описать несколько структур – любой легковой автомобиль и любой грузовик.
struct passengerCar{
    // 2. Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель, открыты ли окна, заполненный объем багажника.
    var brand : String
    var year : Int
    var volume : Int
    var engineOn : Bool
    var openedWindows : Bool
    var volumeFilled : Int
    // 4. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.
    mutating func doaction(action: CarAction){
        switch action {
        case .engineStart:
            self.engineOn = true
        case .engineOff:
            self.engineOn = false
        case .openedWindows:
            self.openedWindows = true
        case .closedWindows:
            self.openedWindows = false
        case .volumeFilled(let volume):
            self.volumeFilled = volume
        }
    }
}
struct truck{
    var brand : String
    var year : Int
    var volume : Int
    var engineOn : Bool
    var openedWindows : Bool
    var volumeFilled : Int
    mutating func doaction(action: CarAction){
        switch action {
        case .engineStart:
            self.engineOn = true
        case .engineOff:
            self.engineOn = false
        case .openedWindows:
            self.openedWindows = true
        case .closedWindows:
            self.openedWindows = false
        case .volumeFilled(let volume):
            self.volumeFilled = volume
        }
    }
}

// 5. Инициализировать несколько экземпляров структур. Применить к ним различные действия.
var volvo: passengerCar = passengerCar(
        brand: "Volvo",
        year: 2005,
        volume: 110,
        engineOn: false,
        openedWindows: false,
        volumeFilled: 35
    )
var mazda: passengerCar = passengerCar(
    brand: "Mazda",
    year: 2009,
    volume: 90,
    engineOn: true,
    openedWindows: true,
    volumeFilled: 0
)
print(volvo)
print(mazda)

volvo.doaction(action: .engineStart)
mazda.doaction(action: .volumeFilled(volume: 80))
// 6. Вывести значения свойств экземпляров в консоль.
print(volvo)
print(mazda)

