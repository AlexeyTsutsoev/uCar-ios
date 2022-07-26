//
//  CarListView.swift
//  uCar
//
//  Created by Alexey Tsutsoev on 23.07.2022.
//

import SwiftUI

struct CarListView: View {
    let cars: [Car]
    var body: some View {
        ScrollView {
            VStack {
                ForEach(cars) { car in
                    CarItemView(car: car)
                }
            }
        }
    }
}

struct CarListView_Previews: PreviewProvider {
    static var previews: some View {
        CarListView(cars: [car1, car2])
    }
}
