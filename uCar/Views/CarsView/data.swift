//
//  data.swift
//  uCar
//
//  Created by Alexey Tsutsoev on 23.07.2022.
//

import Foundation

let car1 = Car(name: "718", imageName: "718", basePrice: "90,000", maxPower: 220, speedUp: 5.5, maxSpeed: 120)
let car2 = Car(name: "718 Cayman GT4",
               imageName: "cayman",
               basePrice: "100,000",
               maxPower: 250,
               speedUp: 5.0,
               maxSpeed: 150)
let car3 = Car(name: "911", imageName: "911", basePrice: "150,000", maxPower: 379, speedUp: 4.0, maxSpeed: 182)
let car4 = Car(name: "Macan", imageName: "macan", basePrice: "120,500", maxPower: 280, speedUp: 4.6, maxSpeed: 146)

let brand1 = AutoBrand(id: 0, name: "Lexus", imageName: "lexus", cars: [])
let brand2 = AutoBrand(id: 1, name: "BMW", imageName: "bmw", cars: [car1])
let brand3 = AutoBrand(id: 2, name: "Porsche", imageName: "porsche", cars: [car1, car2, car3, car4])
let brand4 = AutoBrand(id: 3, name: "Audi", imageName: "audi", cars: [car2])
let brand5 = AutoBrand(id: 4, name: "Mercedes-Benz", imageName: "mercedes", cars: [])

let mockData = [brand1, brand2, brand3, brand4, brand5]
