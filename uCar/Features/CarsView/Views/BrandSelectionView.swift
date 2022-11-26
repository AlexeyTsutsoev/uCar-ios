//
//  BrandSelectionView.swift
//  uCar
//
//  Created by Alexey Tsutsoev on 23.07.2022.
//

import SwiftUI

struct BrandSelectionView: View {
    let brands: [AutoBrand]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 50) {
                ForEach(brands) { brand in
                    BrandItem(brand: brand)
                }
            }
        }
        .padding(.horizontal, 5)
        .frame(height: 125)
    }
}
