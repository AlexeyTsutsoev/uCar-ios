//
//  SearchInput.swift
//  uCar
//
//  Created by Alexey Tsutsoev on 24.07.2022.
//

import SwiftUI

struct SearchInput: View {
    // MARK: - Fields
    let title: String
    @FocusState private var isFocused: Bool
    @Binding var value: String

    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(grayColor)

            TextField(title, text: $value)
        }
        .padding(.vertical, 13)
        .padding(.horizontal, 16)
        .background(lightGrayColor)
        .cornerRadius(12)
    }
}
