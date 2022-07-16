//
//  InProgressView.swift
//  uCar
//
//  Created by Fusion Tech on 16.07.2022.
//

import SwiftUI

struct InProgressView: View {
    var body: some View {
        VStack {
            LottieAnimationView()
            
            HStack(spacing: 5) {
                MainText(text: "Work In Progress...")
                ProgressView()
            }
        }
        .background(ACCENT_COLOR)
    }
}

struct InProgressView_Previews: PreviewProvider {
    static var previews: some View {
        InProgressView()
    }
}
