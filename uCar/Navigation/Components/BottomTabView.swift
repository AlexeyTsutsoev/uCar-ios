//
//  BottomTabView.swift
//  uCar
//
//  Created by Alexey Tsutsoev on 16.07.2022.
//

import SwiftUI

struct BottomTabView: View {
    var body: some View {
        HStack(alignment: .center) {
            ForEach(BOTTOM_TABS) { tab in
                Spacer()
                TabItemView(tab: tab)
                Spacer()
            }
        }
        .padding(.vertical, 17)
        .background(BACKGROUND_COLOR)
    }
}

struct BottomTabView_Previews: PreviewProvider {
    static var previews: some View {
        BottomTabView()
    }
}
