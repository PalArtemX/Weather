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
            Image(systemName: "sun.max")
                .font(.largeTitle)
                .symbolRenderingMode(.hierarchical)
                .foregroundColor(.yellow)
                .rotationEffect(Angle(degrees: isAnimation ? 360 : 0))
        }
        .onAppear {
            withAnimation(Animation.linear(duration: 2).repeatForever(autoreverses: false)) {
                isAnimation.toggle()
            }
        }
    }
}










struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
