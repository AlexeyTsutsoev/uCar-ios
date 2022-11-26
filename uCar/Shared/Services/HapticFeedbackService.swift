//
//  HapticFeedbackService.swift
//  uCar
//
//  Created by Fusion Tech on 16.07.2022.
//

import Foundation
import SwiftUI

public class HapticFeedbackService {
    static func hapticFeedbackOnTap(style: UIImpactFeedbackGenerator.FeedbackStyle = .light) {
        let impact = UIImpactFeedbackGenerator(style: style)
        impact.impactOccurred()
    }
}
