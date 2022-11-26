//
//  ButtonStyles.swift
//  uCar
//
//  Created by Alexey Tsutsoev on 14.07.2022.
//

import Foundation
import SwiftUI

struct FilledButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(.vertical, 10)
            .foregroundColor(backgroundColor)
            .scaleEffect(configuration.isPressed ? 0.9 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}
