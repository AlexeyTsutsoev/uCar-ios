//
//  EnterPhoneViewModel.swift
//  uCar
//
//  Created by Alexey Tsutsoev on 27.11.2022.
//

import Foundation

class EnterPhoneViewModel: ObservableObject {
    @Published var phone = ""
    @Published var isShowAlert = false

    func onContinuePress() {
        if phone.count < 10 {
           alertToggle()
        } else {
            print("Phone is valid") // TODO: Add Navigation
        }
    }

    func alertToggle() {
        isShowAlert.toggle()
    }
}
