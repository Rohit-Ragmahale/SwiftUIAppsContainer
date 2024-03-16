//
//  Gradient.swift
//  SwiftContainerApp
//
//  Created by Rohit Ragmahale on 28/02/24.
//

import SwiftUI

struct Gradient: View {
    var body: some View {
        Text("iOS")
            .font(.system(size: 180))
            .fontWeight(.black)
            .foregroundStyle(.red.gradient)
        
        Text("iOS")
            .font(.system(size: 180))
            .fontWeight(.black)
            .foregroundStyle(LinearGradient(colors: [.pink, .purple, .blue], startPoint: .topLeading, endPoint: .bottomTrailing))
    }
}

#Preview {
    Gradient()
}
