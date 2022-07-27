//
//  CarDetailsView.swift
//  uCar
//
//  Created by Alexey Tsutsoev on 26.07.2022.
//

import SwiftUI

struct CarDetailsView: View {
    // MARK: - Fields
    @Environment(\.dismiss) var dismiss
    @ObservedObject var carDetailVM = CarDetailsViewModel()
    let car: Car
    
    // MARK: - Body
    var body: some View {
        VStack {
            ScreenHeader(
                onBackPress: { dismiss() },
                rightAccessory:
                    Image(systemName: carDetailVM.isLiked ? "heart.fill" : "heart"),
                onRightAccessoryPress: carDetailVM.setLiked
            )
            ScrollView(.vertical, showsIndicators: false) {
                
                GeometryReader { proxy in
                    let minY = proxy.frame(in: .named("SCROLL")).minY
                    let size = proxy.size
                    let height = size.height + minY
                    
                    Group {
                        MainText(text: car.name, size: 30, weight: .bold)
                            .padding(18)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        CarouselView(content: Array(repeating: Image(car.imageName), count: 5))
                    }
                    .frame(width: size.width, height: height, alignment: .top)
                    .offset(y: -minY)
                    .opacity(minY >= 0 ? 1 : (minY + 170) * 0.01)
                }
                .frame(height: 250)
                .padding(.bottom, 24)
                
                LazyVStack {
                    HStack {
                        VStack {
                            MainText(text: "\(car.maxPower) hp", size: 22, weight: .bold)
                            MainText(text: "max. power", size: 13, weight: .heavy, color: grayColor)
                        }
                        
                        Spacer()
                        
                        VStack {
                            MainText(text: "\(car.speedUp) s", size: 22, weight: .bold)
                            MainText(text: "0 - 60 mph", size: 13, weight: .heavy, color: grayColor)
                        }
                        
                        Spacer()
                        
                        VStack {
                            MainText(text: "\(car.maxSpeed) mph", size: 22, weight: .bold)
                            MainText(text: "top track speed", size: 13, weight: .heavy, color: grayColor)
                        }
                    }
                    
                    Divider()
                        .foregroundColor(lightGrayColor)
                        .padding(.vertical, 22)
                    
                    ForEach(0...100, id: \.self) { _ in
                        MainText(text: "MOCK TEXT")
                    }
                }
                .padding(.horizontal, 16)
                .padding(.top, 28)
                .background(.white)
                .cornerRadius(30)
                
            }
            .coordinateSpace(name: "SCROLL")
        }
        .background(lightGrayColor)
    }
}

struct CarDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        CarDetailsView(car: car1)
    }
}
