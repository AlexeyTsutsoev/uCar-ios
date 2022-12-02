//
//  PhoneInput.swift
//  uCar
//
//  Created by Alexey Tsutsoev on 27.11.2022.
//

import SwiftUI
import iPhoneNumberField

struct PhoneInput: View {
    @State private var isEditing: Bool = false
    @Binding var phoneNumber: String

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            MainText(text: "YOUR PHONE", size: 10, weight: .bold, color: grayColor)

            iPhoneNumberField("999 999 99 99", text: $phoneNumber, isEditing: $isEditing, formatted: true)
                .flagHidden(false)
                .prefixHidden(false)
                .flagSelectable(true)
                .clearButtonMode(.whileEditing)
                .accentColor(fontColor)
                .font(Font.custom("Inter-SemiBold", size: 16))
                .padding(.vertical, 12)
                .overlay(
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(isEditing ? fontColor : grayColor),
                    alignment: .bottom
                )
        }
    }
}
