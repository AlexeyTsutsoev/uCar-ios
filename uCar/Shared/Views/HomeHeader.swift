//
//  HomeHeader.swift
//  uCar
//
//  Created by Alexey Tsutsoev on 24.07.2022.
//

import SwiftUI

struct HomeHeader: View {
    // MARK: - Fields
    let title: String
    let onBellPress: () -> Void
    let onSliderPress: () -> Void

    @Binding var value: String

    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "bell.fill")
                .onTapGesture {
                    onBellPress()
                }

            SearchInput(title: title, value: $value)

            Image(systemName: "slider.horizontal.3")
                .onTapGesture {
                    onSliderPress()
                }
        }
        .padding(.horizontal, 17)
        .padding(.vertical, 8)
    }
}
