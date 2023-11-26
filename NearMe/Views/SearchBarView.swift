//
//  SearchBarView.swift
//  NearMe
//
//  Created by ioannis on 3/11/23.
//

import SwiftUI

struct SearchBarView: View {
    
    @Binding var search:String
    @Binding var isSearching:Bool
    
    var body: some View {
        VStack(spacing:-10){
            TextField("Search",text: $search)
                .textFieldStyle(.roundedBorder)
                .padding()
                .onSubmit {
                    //code firef whenr you click return in TextField
                    isSearching = true
                }
            SearchOptionsView { searchItem in
                search = searchItem
                isSearching = true
            }
            .padding([.leading],10)
            .padding([.bottom],20)
        }
    }
}

#Preview {
    SearchBarView(search: .constant("coffee"), isSearching: .constant(true))
}
