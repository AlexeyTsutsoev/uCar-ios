//
//  HomeNavigation.swift
//  uCar
//
//  Created by Alexey Tsutsoev on 16.07.2022.
//

import SwiftUI

struct HomeNavigation: View {
    // MARK: - Environment
    @ObservedObject var tabBarVM = TabBarViewModel()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                
                switch tabBarVM.selection {
                case 0:
                    InProgressView(screenName: "Car")
                case 1:
                    InProgressView(screenName: "Order")
                case 2:
                    InProgressView(screenName: "Liked")
                case 3:
                    InProgressView(screenName: "Profile")
                default:
                    InProgressView(screenName: "Error")
                }
                
                BottomTabView()
                    .environmentObject(tabBarVM)
            }
        }
    }
}

struct HomeNavigation_Previews: PreviewProvider {
    static var previews: some View {
        HomeNavigation()
    }
}
