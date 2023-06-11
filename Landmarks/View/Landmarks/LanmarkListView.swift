//
//  LandMarkListView.swift
//  Landmarks
//
//  Created by Aung Khant Kyaw on 24/05/2023.
//

import SwiftUI

struct LandMarkListView: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoriteOnly = false
    var filteredlandmarks: [Landmark] {
        modelData.landmarks.filter{landmark in
            (!showFavoriteOnly || landmark.isFavorite)
        }
        
        
    }
    var body: some View {
        NavigationView {
            List{
                Toggle(isOn: $showFavoriteOnly) {
                    Text("Favorites only")
                }
                ForEach (filteredlandmarks){ landmark in
                    NavigationLink{
                        LandmarkDetail(landmark: landmark)
                    }label: {
                        LandMarkRow(landmark: landmark)
                    }
                }
                .navigationTitle("LandMarks")

            }
        }
    }
}

struct LandMarkListView_Previews: PreviewProvider {
    static var previews: some View {
        LandMarkListView()

    }
}
