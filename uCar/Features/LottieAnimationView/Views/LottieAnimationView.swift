//
//  InDevelopView.swift
//  uCar
//
//  Created by Alexey Tsutsoev on 15.07.2022.
//

import SwiftUI
import Lottie

struct LottieAnimationView: UIViewRepresentable {
    // MARK: - Fields
    @ObservedObject var lottieAnimationVM = LottieAnimationViewModel()

    // MARK: - Views
    func makeUIView(context: Context) -> UIView {
        let view = UIView()

        let animationView = AnimationView()
        let animation = Animation.named(lottieAnimationVM.named)
        animationView.animation = animation
        animationView.loopMode = lottieAnimationVM.loopMode
        animationView.play()
        animationView.contentMode = .scaleAspectFit

        animationView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(animationView)

        NSLayoutConstraint.activate([
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor)
        ])

        return view
    }

    func updateUIView(_ uiView: UIView, context: Context) {

    }
}

struct InDevelopView_Previews: PreviewProvider {
    static var previews: some View {
        LottieAnimationView()
    }
}
