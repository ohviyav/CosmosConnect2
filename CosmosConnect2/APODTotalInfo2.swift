//
//  APODTotalInfo.swift
//  CosmosConnect
//
//  Created by Scholar on 7/16/25.
//

import SwiftUI

struct APODTotalInfo2: View {
    @StateObject private var viewModel = NasaImageViewModel()
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    if let apod = viewModel.apodImage,
                       let imageURL = URL(string: apod.url),
                       apod.media_type == "image" {
                        
                        Text("NASA Astronomy Picture Of The Day")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                        
                        Text(apod.title)
                            .font(.title)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .padding()
                        
                        AsyncImage(url: imageURL) { image in
                            image
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(12)
                        } placeholder: {
                            ProgressView()
                        }
                        
                        /*
                        NavigationLink("Go to favorites", destination: FavoritesView2(viewModel: viewModel))
                         */
                        
                        Text(apod.explanation)
                            .foregroundColor(.white)
                            .padding()
                    } else {
                        ProgressView("Loading full APOD...")
                            .onAppear {
                                viewModel.fetchImage()
                            }
                    }
                }
                .padding()
            }
            .background(Color.black.edgesIgnoringSafeArea(.all))
        }
    }
    
}


#Preview {
    APODTotalInfo2()
}
