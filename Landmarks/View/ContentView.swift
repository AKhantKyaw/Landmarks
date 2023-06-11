//
//  ContentView.swift
//  Landmarks
//
//  Created by Aung Khant Kyaw on 18/05/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandMarkListView()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
