//
//  CarItemView.swift
//  uCar
//
//  Created by Alexey Tsutsoev on 23.07.2022.
//

import SwiftUI

struct CarItemView: View {
    let car: Car
    var body: some View {
        NavigationLink {
            CarDetailsView(car: car)
                .navigationBarHidden(true)
        } label: {
            VStack {
                HStack(alignment: .center) {
                    VStack(alignment: .leading, spacing: 5) {
                        MainText(text: car.name, size: 30, weight: .bold)
                        MainText(text: "From $ \(car.basePrice)", size: 13, weight: .heavy, color: grayColor)
                        Image(car.imageName)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)

                    Spacer()

                    Image(systemName: "chevron.right")
                        .resizable()
                        .frame(width: 25, height: 38)
                        .foregroundColor(fontColor)
                }
                .padding(16)

                Divider()
                    .foregroundColor(lightGrayColor)
            }
        }

    }
}

struct CarItemView_Previews: PreviewProvider {
    static var previews: some View {
        CarItemView(car: car2)
    }
}
