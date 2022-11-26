//
//  SplashView.swift
//  uCar
//
//  Created by Alexey Tsutsoev on 16.07.2022.
//

import SwiftUI

struct SplashView: View {
    // MARK: - Fields
    @State private var animate = false
    var body: some View {
        ZStack {
            Image(launchImage)
                .resizable()
                .padding(.horizontal, 10)
                .padding(.vertical, 3)
                .frame(width: 148, height: 148, alignment: .center)
                .scaleEffect(animate ? 7 : 1)

            MainText(text: "uCar", size: 30, weight: .bold)
                .opacity(animate ? 0 : 1)
        }
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                animate.toggle()
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
