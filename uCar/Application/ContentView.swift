//
//  ContentView.swift
//  uCar
//
//  Created by Alexey Tsutsoev on 11.07.2022.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State private var isShowSplash = true

    var body: some View {
        ZStack {
            if isShowSplash {
                SplashView()
            } else {
                HomeNavigation()
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.6) {
                withAnimation {
                    isShowSplash.toggle()
                }
            }
        }
    }
}
