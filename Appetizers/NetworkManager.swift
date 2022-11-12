//
//  NetworkManager.swift
//  Appetizers
//
//  Created by Obinna Aguwa on 12/11/2022.
//

import Foundation

final class NetworkManager {
    static let shared = NetworkManager()
    
    static let baseURL = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/"
    static let appetizerURL = baseURL + "appetizers"
    
    private init() {}
    
    func getAppetizers(completed: @escaping (Result<[Appetizer], Error>) -> Void) {
        
    }
}
