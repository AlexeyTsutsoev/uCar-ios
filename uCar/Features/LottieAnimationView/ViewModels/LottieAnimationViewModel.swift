//
//  LottieAnimationViewModel.swift
//  uCar
//
//  Created by Alexey Tsutsoev on 26.11.2022.
//

import Foundation
import Lottie

class LottieAnimationViewModel: ObservableObject {
    @Published var named = "in-develop-animation"
    @Published var loopMode: LottieLoopMode = .loop
}
