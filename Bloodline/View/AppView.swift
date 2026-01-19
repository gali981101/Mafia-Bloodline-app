//
//  AppView.swift
//  Bloodline
//
//  Created by Terry Jason on 2026/1/19.
//

import SwiftUI

struct AppView: View {
    
    var body: some View {
        TabView {
            BloodlineView()
                .tabItem({
                    Image("tabicon-branch")
                    Text("Blood")
                })
            ContentView()
                .tabItem({
                    Image("tabicon-book")
                    Text("Guide")
                })
            LifeStagesView()
                .tabItem({
                    Image("tabicon-avocado")
                    Text("Life")
                })
            SettingsView()
                .tabItem({
                    Image("tabicon-settings")
                    Text("Set")
                })
        }
        .accentColor(Color.primary)
    }
}

#Preview {
    AppView()
}
