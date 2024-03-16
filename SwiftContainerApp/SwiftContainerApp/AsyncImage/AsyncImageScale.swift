//
//  AsyncImageScale.swift
//  SwiftContainerApp
//
//  Created by Rohit Ragmahale on 29/02/24.
//

import SwiftUI

struct AsyncImageScale: View {
    private let path = URL(string: "https://i.pinimg.com/564x/8d/c7/7c/8dc77c32cbbe0966a30be49ffe6f8f38.jpg")
    var body: some View {
        // BASIC
       // AsyncImage(url: path)
        
        // SCALED
        AsyncImage(url: path, scale: 2)
    }
}

#Preview {
    AsyncImageScale()
}
