//
//  CategoryHome.swift
//  Landmarks
//
//  Created by Aung Khant Kyaw on 27/05/2023.
//

import SwiftUI

struct CategoryHome: View {
    @EnvironmentObject var modelData: ModelData
    var body: some View {
        NavigationView{
            
            List{
                modelData.features[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                ForEach(modelData.categories.keys.sorted(), id: \.self){key in
                    CategoryRowView(categoryName: key, items:modelData.categories[key]!
                    )
                }
            }
          .navigationTitle("Featured")
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(ModelData())
    }
}
