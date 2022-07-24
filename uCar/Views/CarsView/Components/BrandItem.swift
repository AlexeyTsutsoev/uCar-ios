//
//  BrandItem.swift
//  uCar
//
//  Created by Alexey Tsutsoev on 23.07.2022.
//

import SwiftUI

struct BrandItem: View {
    @EnvironmentObject var carsVM: CarsViewModel
    let brand: AutoBrand
    
    var body: some View {
        let isSelected = carsVM.selectedBrand.id == brand.id
        
        ZStack {
            if isSelected {
                Circle()
                    .foregroundColor(ACCENT_COLOR)
                    .blur(radius: 20)
            }
            
            VStack(alignment: .center, spacing: 5) {
                Image(brand.imageName)
                    .resizable()
                    .frame(width: 40, height: 40)
                    .scaleEffect(isSelected ? 1.1 : 1)
                    .padding(.bottom, 8)
                
                MainText(text: brand.name, size: 11, weight: .bold, color: isSelected ? FONT_COLOR : GRAY_COLOR)
                
                if isSelected {
                    Circle()
                        .foregroundColor(FONT_COLOR)
                        .frame(width: 4, height: 4)
                }
            }
        }
        .animation(.easeInOut, value: isSelected)
        .onTapGesture {
            carsVM.setSelectedBrand(newValue: brand)
        }
    }
}
