//
//  CarsViewModel.swift
//  uCar
//
//  Created by Alexey Tsutsoev on 23.07.2022.
//

import Foundation

class CarsViewModel: ObservableObject {
    @Published var selectedBrand = brand3
    @Published var searchValue = ""

    var searchedCars: [Car] {
        if searchValue.isEmpty {
            return selectedBrand.cars
        }

        let preparedSearch = searchValue.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)

        return selectedBrand.cars.filter { $0.name.lowercased().contains(preparedSearch) }
    }

    func setSelectedBrand(newValue: AutoBrand) {
        selectedBrand = newValue
    }

    func onBellPress() {
        // TODO: Add later
    }

    func onSLiderPress() {
        // TODO: Add later
    }
}
