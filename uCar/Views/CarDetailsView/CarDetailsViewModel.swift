//
//  CarDetailsViewModel.swift
//  uCar
//
//  Created by Alexey Tsutsoev on 26.07.2022.
//

import Foundation
import SwiftUI

class CarDetailsViewModel: ObservableObject {
    // MARK: - Fields
    @Published var isLiked = false
    @Published var selectedColorIndex = 0
    
    // MARK: - Handlers
    func setLiked() {
        HapticFeedbackService.hapticFeedbackOnTap()
        isLiked.toggle()
    }
}
