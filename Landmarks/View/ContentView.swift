//
//  ContentView.swift
//  Landmarks
//
//  Created by Aung Khant Kyaw on 18/05/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .featured


    enum Tab {
        case featured
        case list
    }
    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem{
                Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)
            LandMarkListView()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
