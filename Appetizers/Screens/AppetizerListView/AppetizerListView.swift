//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Obinna Aguwa on 11/11/2022.
//

import SwiftUI

struct AppetizerListView: View {
    @StateObject private var appetizerListViewModel: AppetizerListViewModel = AppetizerListViewModel()
    
    var body: some View {
        ZStack {
            NavigationView {
                List(appetizerListViewModel.appetizer, id: \.id) { appetizer in
                    AppetizerListCell(appetizer: appetizer)
                }
                .listStyle(InsetListStyle())
                .navigationTitle("🍟 Appetizers")
            }
            .onAppear {
                appetizerListViewModel.getAppetizers()
            }
            
            if appetizerListViewModel.isLoading {
                LoadingView()
            }
        }
        .alert(item: $appetizerListViewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
        
    }
    
    
}

struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}
