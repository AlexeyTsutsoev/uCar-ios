//
//  AutoBrand.swift
//  uCar
//
//  Created by Alexey Tsutsoev on 23.07.2022.
//

import Foundation

struct AutoBrand: Identifiable {
    let id: Int
    let name: String
    let imageName: String
    let cars: [Car]
}
