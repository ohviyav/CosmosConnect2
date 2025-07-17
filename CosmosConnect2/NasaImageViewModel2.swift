//
//  NasaImageViewModel.swift
//  CosmosConnect
//
//  Created by Scholar on 7/14/25.
//

import Foundation

class NasaImageViewModel: ObservableObject {
    @Published var apodImage: ApodImage2?
    @Published var favorites: [ApodImage2] = []
    

    func fetchImage() {
        let apiKey = "Nj7DNDewexIIfh0BAGMuC893RotU55vZQDHszdcC" // Replace this with your real key
        let urlString = "https://api.nasa.gov/planetary/apod?api_key=\(apiKey)"

        guard let url = URL(string: urlString) else {
            print("Invalid URL")
            return
        }

        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Network error: \(error)")
                return
            }

            guard let data = data else {
                print("No data received")
                return
            }

            do {
                let decoded = try JSONDecoder().decode(ApodImage2.self, from: data)
                
                // Optional: skip if it's not an image
                guard decoded.media_type == "image" else {
                    print("Received media type: \(decoded.media_type)")
                    return
                }

                DispatchQueue.main.async {
                    self.apodImage = decoded
                }
            } catch {
                print("Decoding error: \(error)")
            }
        }.resume()
    }
    
    //start here
    
    func addToFavorites() {
        guard let current = apodImage else { return }
        
        if !favorites.contains(current) {
            favorites.append(current)
        }
    }
        
        func isFavorite(_ image: ApodImage2) -> Bool {
                return favorites.contains(image)
            }
        
        func removeFromFavorites(_ image: ApodImage2) {
                favorites.removeAll { $0 == image }
            }
    func toggleFavorite() {
        guard let current = apodImage else { return }

        if isFavorite(current) {
            removeFromFavorites(current)
        } else {
            favorites.append(current)
        }
    }


     
     
    
    
}

