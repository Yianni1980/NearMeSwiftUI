//
//  PreviewData.swift
//  NearMe
//
//  Created by ioannis on 26/10/23.
//

import Foundation
import MapKit
import Contacts

struct PreviewData {
    
    static var home:MKMapItem {
        
        let coordinate = CLLocationCoordinate2D(latitude: 40.69154, longitude: 22.10144)
        
        let addressDictionary:[String:Any] = [
            CNPostalAddressStreetKey:"1 sto tzentemi",
            CNPostalAddressCityKey:"Naousa",
            CNPostalAddressStateKey:"IMA",
            CNPostalAddressPostalCodeKey:"59200",
            CNPostalAddressCountryKey:"Greece"
        ]
        
        let placemark = MKPlacemark(coordinate: coordinate, addressDictionary: addressDictionary)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = "Tzentemi Inc."
        return mapItem
    }
}
