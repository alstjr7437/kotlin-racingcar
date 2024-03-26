//
//  GamePlay.swift
//  racingcar
//
//  Created by KimMinSeok on 3/27/24.
//

import Foundation

func act(count: Int, cars: [Car]){
    for _ in 0..<count{
        for car in cars{
            car.go()
            let dashes = String(repeating: "-", count: car.position)
            print("\(car.name) : \(dashes)")
        }
        print()
    }
}

func win(cars : [Car]){
    let maxPosition = cars.map { $0.position }.max() ?? 0
    print("최종 우승자: ", terminator: "")
    for car in cars{
        if car.isWinner(winnerPosition: maxPosition) {
            print(car.name, terminator: "")
        }
    }
}
