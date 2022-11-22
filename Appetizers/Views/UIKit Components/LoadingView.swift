//
//  LoadingView.swift
//  Appetizers
//
//  Created by Obinna Aguwa on 14/11/2022.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let activitIndicatorView = UIActivityIndicatorView(style: .large)
        activitIndicatorView.color = .brandPrimary
        activitIndicatorView.startAnimating()
        return activitIndicatorView
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        
    }
}

struct LoadingView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            ActivityIndicator()
        }    }
}
