//
//  ActionButtons.swift
//  NearMe
//
//  Created by ioannis on 25/11/23.
//

import SwiftUI
import MapKit

struct ActionButtons: View {
    
    let mapItem:MKMapItem
    
    var body: some View {
        HStack {
            
            if let phone = mapItem.phoneNumber {
                Button (action: {
                    
                    let numericPhoneNumber =  phone.components(separatedBy: CharacterSet.decimalDigits.inverted).joined()
                    print(numericPhoneNumber)
                    makeCall(phone: numericPhoneNumber)
                    
                }, label: {
                    HStack{
                        Image(systemName: "phone.fill")
                        Text("Call")
                    }
                })
                .buttonStyle(.bordered)
            }
            
            
            Button (action: {
                MKMapItem.openMaps(with: [mapItem])
            }, label: {
                HStack{
                    HStack {
                        Image(systemName: "car.circle.fill")
                        Text("Take me there")
                    }
                    
                }
            }).buttonStyle(.bordered)
                .tint(.green)
            
            Spacer()
        }
    }
}

#Preview {
    ActionButtons(mapItem: PreviewData.home)
}
