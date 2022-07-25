//
//  TabBarViewModel.swift
//  uCar
//
//  Created by Alexey Tsutsoev on 16.07.2022.
//

import SwiftUI

class TabBarViewModel: ObservableObject {
    @Published var selection = 0

    func setSelection(newSelection: Int) {
        HapticFeedbackService.hapticFeedbackOnTap(style: .medium)
        selection = newSelection
    }
}
