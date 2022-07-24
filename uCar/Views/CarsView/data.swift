//
//  data.swift
//  uCar
//
//  Created by Alexey Tsutsoev on 23.07.2022.
//

import Foundation

let CAR_1 = Car(name: "718", imageName: "718", basePrice: "90,000", maxPower: 220, speedUp: 5.5, maxSpeed: 120)
let CAR_2 = Car(name: "718 Cayman GT4", imageName: "cayman", basePrice: "100,000", maxPower: 250, speedUp: 5.0, maxSpeed: 150)
let CAR_3 = Car(name: "911", imageName: "911", basePrice: "150,000", maxPower: 379, speedUp: 4.0, maxSpeed: 182)
let CAR_4 = Car(name: "Macan", imageName: "macan", basePrice: "120,500", maxPower: 280, speedUp: 4.6, maxSpeed: 146)

let BRAND_1 = AutoBrand(id: 0, name: "Lexus", imageName: "lexus", cars: [])
let BRAND_2 = AutoBrand(id: 1, name: "BMW", imageName: "bmw", cars: [CAR_1])
let BRAND_3 = AutoBrand(id: 2, name: "Porsche", imageName: "porsche", cars: [CAR_1, CAR_2, CAR_3, CAR_4])
let BRAND_4 = AutoBrand(id: 3, name: "Audi", imageName: "audi", cars: [CAR_2])
let BRAND_5 = AutoBrand(id: 4, name: "Mercedes-Benz", imageName: "mercedes", cars: [])

let MOCK_DATA = [BRAND_1, BRAND_2, BRAND_3, BRAND_4, BRAND_5]
