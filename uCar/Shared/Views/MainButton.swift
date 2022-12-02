//
//  MainButton.swift
//  uCar
//
//  Created by Alexey Tsutsoev on 14.07.2022.
//

import SwiftUI

struct MainButton: View {
    // MARK: - Fields
    let title: String
    let onPress: () -> Void
    let imageName: String?
    let isLoading: Bool
    let disabled: Bool

    init (
        onPress: @escaping () -> Void,
        title: String,
        isLoading: Bool = false,
        disabled: Bool = false,
        imageName: String? = nil
    ) {
        self.onPress = onPress
        self.title = title
        self.isLoading = isLoading
        self.disabled = disabled
        self.imageName = imageName
    }

    // MARK: - Body
    var body: some View {
        Button {
            onPress()
        } label: {
            HStack(spacing: 12) {
                if isLoading {
                    ProgressView()
                } else {
                    if let image = imageName {
                        Image(systemName: image)
                    }
                    MainText(text: title, weight: .bold, color: backgroundColor)
                }
            }
        }
        .frame(height: 56)
        .background(disabled ? grayColor : fontColor)
        .clipShape(Capsule())
        .buttonStyle(FilledButton())
        .disabled(isLoading || disabled)

    }
}

struct MainButton_Previews: PreviewProvider {
    static var previews: some View {
        MainButton(onPress: {}, title: "Test", imageName: "xmark")
    }
}
