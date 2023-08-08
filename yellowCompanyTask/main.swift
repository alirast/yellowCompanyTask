//
//  main.swift
//  yellowCompanyTask
//
//  Created by N S on 08.08.2023.
//

import Foundation


print("insert how much balls")
let howMuchBalls = readLine()
print("insert the size of all the balls Hermiona gave")
let hermionaGave = readLine()


var number = Int()
if let balls = howMuchBalls {
    number = Int(balls)!
}

var array = [Int]()

array = (hermionaGave?.split(separator: " ").compactMap({ Int($0) }))!
print(array)


func makeBalls(numberBalls: Int, array: [Int]) {
    var firstArray = [Int]()
    var secondArray = [Int]()
    for number in array {
        firstArray.append(number)
        if number >= numberBalls {
            break
        }
    }

    secondArray = array.filter({ !firstArray.contains($0) })
    if firstArray.count == numberBalls {
        print(firstArray.sorted(by: >).map({ String($0) }).joined(separator: " "))
        return
    }
    print("number balls", numberBalls)

    for i in array {
        print("number of array", i)
    }

    print(firstArray.sorted(by: >).map({ String($0) }).joined(separator: " "))
    print("")
    print(secondArray.sorted(by: >).map({ String($0) }).joined(separator: " "))
}

makeBalls(numberBalls: number, array: array)


