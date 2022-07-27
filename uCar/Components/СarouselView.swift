//
//  СarouselView.swift
//  uCar
//
//  Created by Alexey Tsutsoev on 26.07.2022.
//

import SwiftUI

struct CarouselView<T: View>: View {
    // MARK: - Fields
    let content: [T]
    @State var selection = 0
    
    // MARK: - Body
    var body: some View {
        VStack {
            TabView(selection: $selection) {
                ForEach(content.indices, id: \.self) { index in
                    content[index]
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            
            HStack(alignment: .center, spacing: 7) {
                ForEach(content.indices, id: \.self) { index in
                    let isSelected = index == selection
                    Capsule()
                        .foregroundColor(isSelected ? fontColor : grayColor)
                        .frame(width: isSelected ? 20 : 7, height: 7)
                        .animation(.easeIn(duration: 0.5), value: isSelected)
                }
            }
        }
    }
}

struct CarouselView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselView(content: [Image(car1.imageName), Image(car1.imageName)])
    }
}
