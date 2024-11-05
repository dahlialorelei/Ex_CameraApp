  //
//  ContentView.swift
//  TestCameraApp
//
//  Created by Dahlia Taylor on 2024-10-30.
//

import SwiftUI

struct ContentView: View {
    @State private var showCamera = false
    @State private var image: UIImage?
    

    var body: some View {
        VStack {
            if let image = image {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 300)
                    .padding()
            } else {
                Text("No Image Taken")
                    .padding()
            }

            Button(action: {
                showCamera = true
            }) {
                Text("Take Picture")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .sheet(isPresented: $showCamera) {
                CameraView(image: $image)
            }
        }
    }
}

      
