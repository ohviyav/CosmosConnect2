


//
//  FavoritesView.swift
//  CosmosConnect
//
//  Created by Scholar on 7/15/25.
//

import SwiftUI


struct FavoritesView2: View {
    @ObservedObject var viewModel: NasaImageViewModel
    
    var body: some View {
        NavigationView {
            List(viewModel.favorites) { image in
                VStack(alignment: .leading) {
                    //Group {
                   // for pic in (_ image: ApodImage) {
                      //      Image(favorites[pic])
                     //   }
                    //}
                    Text(image.title)
                        .font(.headline)
                    Button(action: {
                        viewModel.removeFromFavorites(image)
                    }) {
                        Image(systemName: "trash")
                            .foregroundColor(.red)
                    }


                    if let imageURL = URL(string: image.url) {
                        AsyncImage(url: imageURL) { image in
                            image
                                .resizable()
                                .scaledToFit()
                                .frame(height: 200)
                        } placeholder: {
                            ProgressView()
                        }
                    }

                    Text(image.explanation)
                        .font(.subheadline)
                        .lineLimit(3)
                }
                .padding(.vertical)
            }
            .navigationTitle("Favorites")
        }
    }
        

}



/*
struct FavoritesView2: View {
    @Query private var favorites: [FavoritesData2]
    @Environment(\.modelContext) private var modelContext

    var body: some View {
        NavigationView {
            List {
                ForEach(favorites) { image in
                    VStack(alignment: .leading) {
                        Text(image.title)
                            .font(.headline)

                        if let url = URL(string: image.url) {
                            AsyncImage(url: url) { image in
                                image
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 200)
                            } placeholder: {
                                ProgressView()
                            }
                        }

                        Text(image.explanation)
                            .font(.subheadline)
                            .lineLimit(3)
                    }
                    .padding(.vertical)
                }
                .onDelete(perform: deleteItems)
            }
            .navigationTitle("Favorites")
        }
    }

    private func deleteItems(at offsets: IndexSet) {
        for index in offsets {
            modelContext.delete(favorites[index])
        }
    }
}
*/
    #Preview {
        // This is a closure that returns a View
            let sampleImage = ApodImage2(
                title: "Sample NASA Image",
                url: "https://cdn.esahubble.org/archives/images/wallpaper2/heic1509a.jpg",
                explanation: "This is a preview of a sample image from NASA APOD.",
                media_type: "image"
            )

            let dummyViewModel = NasaImageViewModel()
            dummyViewModel.favorites = [sampleImage]

            //use return statement because there are multiple lines of code in the preview
            //computer will not know which part to preview so you use return statement to tell which one to preview
            return FavoritesView2(viewModel: dummyViewModel)
    }





