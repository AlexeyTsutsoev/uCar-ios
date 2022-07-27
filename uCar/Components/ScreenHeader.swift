//
//  ScreenHeader.swift
//  uCar
//
//  Created by Alexey Tsutsoev on 26.07.2022.
//

import SwiftUI

struct ScreenHeader<T: View>: View {
    // MARK: - Fields
    let title: String?
    let onBackPress: () -> Void
    let rightAccessory: T?
    let onRightAccessoryPress: (() -> Void)?

    // MARK: - Init
    init(
        title: String? = nil,
        onBackPress: @escaping () -> Void,
        rightAccessory: T? = nil,
        onRightAccessoryPress: (() -> Void)? = nil
    ) {
        self.title = title
        self.onBackPress = onBackPress
        self.rightAccessory = rightAccessory
        self.onRightAccessoryPress = onRightAccessoryPress
    }

    // MARK: - Body
    var body: some View {
        HStack(alignment: .center) {
            Image(systemName: "chevron.left")
                .resizable()
                .frame(width: 11, height: 17)
                .foregroundColor(fontColor)
                .onTapGesture {
                    onBackPress()
                }

            Spacer()

            if let title = title {
                MainText(text: title, size: 20, weight: .heavy)
            }
            
            Spacer()
            
            if let rightAccessory = rightAccessory, let onRightAccessoryPress = onRightAccessoryPress {
                rightAccessory
                    .onTapGesture(perform: onRightAccessoryPress)
            }
        }
        .padding(18)
    }
}

struct ScreenHeader_Previews: PreviewProvider {
    static var previews: some View {
        ScreenHeader(
            title: "Test",
            onBackPress: {},
            rightAccessory: Image(systemName: "heart"),
            onRightAccessoryPress: {}
        )
    }
}
