//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Aung Khant Kyaw on 24/05/2023.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    
    var landmark : Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: {$0.id == landmark.id })!
    }
    var body: some View {
        ScrollView{
            VStack {
                MapView(coordinate: landmark.locationCoordinates).frame(height: 300)
                    .ignoresSafeArea(edges: .top)
                CirecleAvaterView(image: landmark.image)
                   .offset(y: -130)
                   .padding(.bottom, -100)
                VStack(alignment:.leading) {
                    HStack {
                        Text(landmark.name).font(.title).fontWeight(.bold).foregroundColor(Color.black)
                        Spacer()
                        FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                    }
                    HStack {
                        Text(landmark.park).font(.subheadline)
                        Spacer()
                        Text(landmark.state).font(.subheadline)

                    }
                    Divider()
                    VStack(alignment: .leading){
                        Text("About \(landmark.name)").font(.title2)
                        Text(landmark.description)
                    }

                }.padding()
                Spacer()
            }
            .navigationTitle(landmark.name)
            .navigationBarTitleDisplayMode(.inline)
        }
        }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark:ModelData().landmarks[0])
    }
}
