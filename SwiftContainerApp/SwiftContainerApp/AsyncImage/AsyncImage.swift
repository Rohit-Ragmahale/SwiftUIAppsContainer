//
//  AsyncImage.swift
//  SwiftContainerApp
//
//  Created by Rohit Ragmahale on 28/02/24.
//

import SwiftUI

struct AsyncImageView: View {
    let path = URL(string: "https://i.pinimg.com/564x/8d/c7/7c/8dc77c32cbbe0966a30be49ffe6f8f38.jpg")
    private let photoURL = URL(string: "https://picsum.photos/256")
    var body: some View {
        HStack {
            AsyncImage(url: path) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                case .failure(let error1):
                    Text("error: \(error1.localizedDescription)")
                case .success(let image1):
                    image1
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                @unknown default:
                    fatalError()
                }
            }
        }
    }
}

#Preview {
    AsyncImageView()
}
