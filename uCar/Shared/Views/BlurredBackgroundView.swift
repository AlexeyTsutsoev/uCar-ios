//
//  BlurredBackgroundView.swift
//  uCar
//
//  Created by Alexey Tsutsoev on 27.11.2022.
//

import SwiftUI

struct BlurredBackgroundView<Content: View>: View {
    let content: () -> Content
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 174, height: 174)
                .foregroundColor(mainAccentColor)
                .position(x: UIScreen.screenWidth, y: 100)
                .blur(radius: 50)

            content()
        }
        .background(backgroundColor)
    }
}

struct BlurredBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BlurredBackgroundView {
            VStack(alignment: .leading) {
                Text("Test")
                Text("Test")
                Text("Test")
                Text("Test")
            }
        }
    }
}
