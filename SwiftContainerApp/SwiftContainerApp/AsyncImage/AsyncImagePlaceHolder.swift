//
//  AsyncImagePlaceHolder.swift
//  SwiftContainerApp
//
//  Created by Rohit Ragmahale on 29/02/24.
//

import SwiftUI

struct AsyncImagePlaceHolder: View {
    private let path = URL(string: "https://i.pinimg.com/564x/8d/c7/7c/8dc77c32cbbe0966a30be49ffe6f8f38.jpg")
    var body: some View {
        AsyncImage(url: path) { image in
            image.resizable()
                .scaledToFit()
        } placeholder: {
            Image(uiImage: UIImage(named: "Start")!)
        }
        .padding(20)
        .background(Color.red)
    }
}

#Preview {
    AsyncImagePlaceHolder()
}
