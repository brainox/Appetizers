//
//  AppetizerViewModel.swift
//  Appetizers
//
//  Created by Obinna Aguwa on 14/11/2022.
//

import Foundation

final class AppetizerListViewModel: ObservableObject {
    @Published var appetizer: [Appetizer] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading = false
    
    
    func getAppetizers() {
        isLoading = true
        NetworkManager.shared.getAppetizers { [self] result in
            DispatchQueue.main.async {
                self.isLoading = false
                switch result {
                case .success(let appetizer):
                    self.appetizer = appetizer
                case .failure(let error):
                    switch error {
                        
                    case .invalidURL:
                        self.alertItem = AlertContext.invalidURL
                        
                    case .invalidResponse:
                        self.alertItem = AlertContext.invalidResponse
                        
                    case .invalidData:
                        self.alertItem = AlertContext.invalidData
                        
                    case .unableToComplete:
                        self.alertItem = AlertContext.unableToComplete
                    }
                }
            }
            
        }
    }
}
