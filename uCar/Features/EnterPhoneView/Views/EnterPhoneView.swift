//
//  EnterPhoneView.swift
//  uCar
//
//  Created by Alexey Tsutsoev on 27.11.2022.
//

import SwiftUI

struct EnterPhoneView: View {
    @ObservedObject private var enterPhoneVM = EnterPhoneViewModel()
    var body: some View {
        BlurredBackgroundView {
            VStack(alignment: .leading, spacing: 0) {
                MainText(text: "Enter your phone number", size: 30, weight: .bold)
                    .padding(.bottom, 20)

                MainText(text: "We will send a one-time password to this number",
                         size: 13,
                         weight: .semibold,
                         color: grayColor)
                    .padding(.bottom, 42)

                PhoneInput(phoneNumber: $enterPhoneVM.phone)
                    .padding(.bottom, 24)

                MainButton(onPress: enterPhoneVM.onContinuePress, title: "Continue")
            }
            .frame(
                  minWidth: 0,
                  maxWidth: .infinity,
                  minHeight: 0,
                  maxHeight: .infinity,
                  alignment: .center
                )
            .padding(16)
        }
        .alert("Please, enter valid phone number", isPresented: $enterPhoneVM.isShowAlert) {
            Button(role: .cancel) {
                enterPhoneVM.alertToggle()
            } label: {
                Text("OK")
            }

        }
    }
}

struct EnterPhoneView_Previews: PreviewProvider {
    static var previews: some View {
        EnterPhoneView()
    }
}
