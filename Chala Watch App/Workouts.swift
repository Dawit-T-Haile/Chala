//
//  Workouts.swift
//  Chala Watch App
//
//  Created by Dawit Tadele on 7/6/24.
//

import Foundation

struct Workout: Identifiable, Hashable {
    let id: Int
    let date: Date
    let duration: Int
    let numJumps: Int
}

let workouts: [Workout] = [
    Workout(id: 1,
            date: Date(),
            duration: Int(arc4random_uniform(100)),
            numJumps: Int(arc4random_uniform(100))),
    Workout(id: 1,
            date: Date(),
            duration: Int(arc4random_uniform(100)),
            numJumps: Int(arc4random_uniform(100))),
    Workout(id: 1,
            date: Date(),
            duration: Int(arc4random_uniform(100)),
            numJumps: Int(arc4random_uniform(100)))
]
