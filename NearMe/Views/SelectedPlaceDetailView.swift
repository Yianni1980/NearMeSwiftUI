//
//  SelectedPlaceDetailView.swift
//  NearMe
//
//  Created by ioannis on 14/11/23.
//

import SwiftUI
import MapKit
struct SelectedPlaceDetailView: View {
    
    @Binding var mapItem: MKMapItem?
    
    var body: some View {
        HStack(alignment:.top) {
            VStack(alignment:.leading) {
                if let mapItem {
                    PlaceView(mapItem: mapItem)
                }
            }
            Image(systemName: "xmark.circle.fill")
                .padding(.trailing,10)
                .onTapGesture {
                    mapItem = nil
                }
        }
    }
}

#Preview {
    
    let home = Binding<MKMapItem?>(
        get: { PreviewData.home},
        set:  {_ in}
    )
    
    return   SelectedPlaceDetailView(mapItem: home)
}
