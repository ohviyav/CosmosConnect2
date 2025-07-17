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
            //Color(.black).edgesIgnoringSafeArea(.all)
            VStack{
                if let apod = viewModel.apodImage,
                   let imageURL = URL(string: apod.url) {
                    
                    Text("NASA Astronomy Picture Of The Day")
                        .font(.title)
                        .fontWeight(.medium)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    
                    Text(apod.title)
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        //.padding()
                

                    AsyncImage(url: imageURL) { image in
                        image
                            .resizable()
                            .scaledToFit()
                            .frame(height: 200)
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
                        .font(.custom("Comfortaa-Regular", size: 20))
                        .underline()
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

/*
import SwiftUI
import SwiftData

struct NasaImageView2: View {
    @StateObject private var viewModel = NasaImageViewModel()
    @Environment(\.modelContext) private var modelContext
    @Query private var favorites: [FavoritesData2]

    var body: some View {
        VStack {
            if let apod = viewModel.apodImage,
               let imageURL = URL(string: apod.url) {
                
                Text("NASA Astronomy Picture Of The Day")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()

                Text(apod.title)
                    .font(.title2)
                    .foregroundColor(.white)

                AsyncImage(url: imageURL) { image in
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                } placeholder: {
                    ProgressView()
                }

                HStack {
                    NavigationLink(destination: APODTotalInfo2()) {
                        Text("Click Here To Learn More About Today's Photo")
                            .font(.custom("Comfortaa-Regular", size: 18))
                            .underline()
                            .foregroundColor(.white)
                    }

                    Button(action: {
                        toggleFavorite(apod)
                    }) {
                        Image(systemName: isFavorite(apod) ? "heart.fill" : "heart")
                            .foregroundColor(.red)
                            .font(.title)
                    }
                }
                .animation(.default, value: favorites) // ✅ Here


            } else {
                ProgressView("Fetching NASA Image...")
                    .onAppear {
                        viewModel.fetchImage()
                    }
            }
        }
        .padding()
    }

    private func isFavorite(_ image: ApodImage2) -> Bool {
        favorites.contains(where: { $0.url == image.url })
    }

    private func toggleFavorite(_ image: ApodImage2) {
        if let existing = favorites.first(where: { $0.url == image.url }) {
            modelContext.delete(existing)
        } else {
            let newFavorite = FavoritesData2(
                title: image.title,
                url: image.url,
                explanation: image.explanation
            )
            modelContext.insert(newFavorite)
        }
    }
}
 */



#Preview {
    NasaImageView2()
}
