//
//  NasaImageView.swift
//  CosmosConnect
//
//  Created by Scholar on 7/14/25.
//




import SwiftUI

struct NasaImageView2: View {
    @StateObject private var viewModel = NasaImageViewModel()

    var body: some View {
        ZStack {
            VStack{
                if let apod = viewModel.apodImage,
                   let imageURL = URL(string: apod.url) {
                    
                    Text("NASA Astronomy Picture Of The Day")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                    
                    
                    Text(apod.title)
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .padding()
                

                    AsyncImage(url: imageURL) { image in
                        image
                            .resizable()
                            .scaledToFit()
                            .frame(height: 300)
                            .cornerRadius(12)
                    } placeholder: {
                        ProgressView()
                    }

                    /*
                    ScrollView {
                        //click here to view more
                        Text(apod.explanation)
                            .foregroundColor(Color.white)
                            .padding()
                    }
                    */
                    
                
                    //adding favorite button
            
            HStack {
                NavigationLink(destination:APODTotalInfo2()) {
                    Text("Click Here To Learn More About Today's Photo")
                        .foregroundColor(Color.white)
                }
                Button(action: {
                    viewModel.toggleFavorite()
                }) {
                    Image(systemName: viewModel.isFavorite(apod) ? "heart.fill" : "heart")
                        .foregroundColor(.red)
                        .font(.title)
                    
                }
            }
            
             
                
                Spacer()
                //loading screen
                } else {
                    ProgressView("Fetching NASA Image...")
                        .onAppear {
                            viewModel.fetchImage()
                        }
                }
            }
            .padding()
        }
        
    }
}


#Preview {
    NasaImageView2()
}
