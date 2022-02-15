//
//  LoadingView.swift
//  Weather
//
//  Created by Artem Paliutin on 14.02.2022.
//

import SwiftUI

struct LoadingView: View {
    
    @State private var isAnimation = false
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "cloud")
                    .foregroundColor(.indigo)
                Image(systemName: "sun.max")
                    .foregroundColor(.yellow)
                    .rotationEffect(Angle(degrees: isAnimation ? 360 : 0))
                Image(systemName: "cloud.sun.rain")
                    .foregroundColor(.indigo)
            }
            .font(.largeTitle)
            .symbolRenderingMode(.hierarchical)
        }
        .onAppear {
            withAnimation(Animation.linear(duration: 3).repeatForever(autoreverses: false)) {
                isAnimation.toggle()
            }
        }
    }
}










struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.blue.opacity(0.5)
            LoadingView()
        }
        .ignoresSafeArea()
    }
}
