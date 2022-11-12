//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Obinna Aguwa on 11/11/2022.
//

import SwiftUI

struct AppetizerListView: View {
    var body: some View {
        NavigationView {
            List(MockData.appetizers, id: \.id) { appetizer in
                AppetizerListCell(appetizer: appetizer)
            }
            .listStyle(InsetListStyle())
            .navigationTitle("🍟 Appetizers")
        }
        
    }
}

struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}
