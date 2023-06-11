//
//  Landmark.swift
//  Landmarks
//
//  Created by Aung Khant Kyaw on 23/05/2023.
//

import Foundation
import SwiftUI
import CoreLocation

struct  Landmark : Hashable, Codable,Identifiable{
    var id : Int
    var name : String
    var park : String
    var state : String
    var description : String
    var isFavorite : Bool
    
    private var imageName : String
    var image:Image{
        Image(imageName)
    }
    var category : Category
    
    enum Category : String ,CaseIterable,Codable {
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
    }
    
    private var coordinates: Coordinates
    
    var locationCoordinates : CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    struct Coordinates: Hashable, Codable {
            var latitude: Double
            var longitude: Double
        }
}