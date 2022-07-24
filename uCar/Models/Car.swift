//
//  Car.swift
//  uCar
//
//  Created by Alexey Tsutsoev on 23.07.2022.
//

import Foundation

struct Car: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let basePrice: String
    let maxPower: Int
    let speedUp: Float
    let maxSpeed: Int
}
