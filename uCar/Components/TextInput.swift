//
//  TextInput.swift
//  uCar
//
//  Created by alexey Tsutsoev on 13.07.2022.
//

import SwiftUI

struct TextInput: View {
    // MARK: - Fields
    let title: String
    @FocusState private var isFocused: Bool
    @Binding var value: String
    
    // MARK: - Body
    var body: some View {
        HStack {
            TextField(title, text: $value)
                .focused($isFocused)
            
            Spacer()
            
            Image(systemName: "xmark")
                .padding(.horizontal, 10)
                .onTapGesture {
                    value = ""
                }
        }
        .padding(.bottom, 12)
        .overlay(
            Rectangle()
                .frame(height: 1)
                .foregroundColor(isFocused ? ACCENT_COLOR : GRAY_COLOR),
            alignment: .bottom
        )
    }
}
