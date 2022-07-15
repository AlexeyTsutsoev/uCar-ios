//
//  MainText.swift
//  uCar
//
//  Created by Alexey Tsutsoev on 14.07.2022.
//

import SwiftUI

struct MainText: View {
    // MARK: - Fields
    let text: String
    let size: CGFloat
    let weight: Font.Weight
    let color: Color
    
    init(text: String, size: CGFloat = 16.0, weight: Font.Weight = .medium, color: Color = FONT_COLOR) {
        self.text = text
        self.size = size
        self.weight = weight
        self.color = color
    }
    
    // MARK: - Body
    var body: some View {
        Text(text)
            .foregroundColor(color)
            .font(Font.custom("Inter-Black", size: size))
            .fontWeight(weight)
    }
}

struct MainText_Previews: PreviewProvider {
    static var previews: some View {
        MainText(text: "Main", size: 100)
    }
}
