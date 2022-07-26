//
//  TabItemView.swift
//  uCar
//
//  Created by Alexey Tsutsoev on 16.07.2022.
//

import SwiftUI

struct TabItemView: View {
    // MARK: - Fields
    @EnvironmentObject var tabBarVM: TabBarViewModel
    let tab: BottomTab

    var body: some View {
        let isSelected = tab.id == tabBarVM.selection

        HStack(spacing: 6) {
            Image(systemName: tab.imageName)
                .foregroundColor(isSelected ? fontColor : grayColor)

            if isSelected {
                MainText(text: tab.title)
            }
        }
        .padding(.vertical, 6)
        .padding(.horizontal, 14)
        .background(isSelected ? lightGrayColor : backgroundColor)
        .clipShape(Capsule())
        .animation(.easeOut, value: isSelected)
        .onTapGesture {
            tabBarVM.setSelection(newSelection: tab.id)
        }
    }
}

struct TabItemView_Previews: PreviewProvider {
    static var previews: some View {
        TabItemView(tab: testTab)
    }
}
