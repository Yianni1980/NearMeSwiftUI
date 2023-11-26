//
//  PlaceViesw.swift
//  NearMe
//
//  Created by ioannis on 25/10/23.
//

import SwiftUI
import  MapKit

struct PlaceView: View {
    
    let mapItem:MKMapItem
    
    private var address:String {
        let placemark = mapItem.placemark
        return  "\(placemark.thoroughfare ?? "") \(placemark.subThoroughfare ?? ""), \(placemark.locality ?? ""), \(placemark.administrativeArea ?? "") \(placemark.postalCode ?? ""), \(placemark.country ?? "") "
    }
    
    private var distance:Measurement<UnitLength>? {
        guard let useLocation = LocationManager.shared.manager.location,
              let destinationLocation = mapItem.placemark.location
        else {
            return nil
        }
        
        return calculateDistance(from: useLocation, to: destinationLocation)
        
    }

    var body: some View {
        VStack(alignment: .leading) {
            
            Text(mapItem.name ?? "")
            Text(address)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
            
            if let distance {
                Text(distance,formatter: MeasurementFormatter.distance)
            }
        }
    }
}

#Preview {
    PlaceView(mapItem: PreviewData.home)
}
