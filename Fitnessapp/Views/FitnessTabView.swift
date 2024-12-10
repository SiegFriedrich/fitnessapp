//
//  FitnessTabView.swift
//  Fitnessapp
//
//  Created by Sieg Friedrich on 2024/12/05.
//

import SwiftUI

struct FitnessTabView: View {
    @State var selectedTab = "Home"
    
    init() {
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.stackedLayoutAppearance.selected.iconColor = .green
        appearance.stackedLayoutAppearance.selected.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.green]
        UITabBar.appearance().scrollEdgeAppearance = appearance
       
    }
    
    var body: some View {
        TabView(selection: $selectedTab){
            HomeView().tag("Home")
                .tabItem{Image(systemName: "house")
                Text("Home")
                }
            
            HistoricDataView()
                .tag("HistoricData")
                .tabItem{Image(systemName: "chart.line.uptrend.xyaxis")
                    Text("Charts")
                }
        }
    }
}
struct FitnessTabView_Previews: PreviewProvider {
    static var previews: some View {
        FitnessTabView()
    }
}
