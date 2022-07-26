//
//  CarsView.swift
//  uCar
//
//  Created by Alexey Tsutsoev on 19.07.2022.
//

import SwiftUI

struct CarsView: View {
    @ObservedObject var carsVM = CarsViewModel()

    var body: some View {
        VStack {
            HomeHeader(title: "Brand, model...",
                       onBellPress: carsVM.onBellPress,
                       onSliderPress: carsVM.onSLiderPress,
                       value: $carsVM.searchValue)
            CarListView(cars: carsVM.searchedCars)
            BrandSelectionView(brands: mockData)
        }
        .environmentObject(carsVM)
    }
}

struct CarsView_Previews: PreviewProvider {
    static var previews: some View {
        CarsView()
    }
}
