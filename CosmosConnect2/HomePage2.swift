//
//  homePage.swift
//  CosmosConnect
//
//  Created by Scholar on 7/14/25.
//

import SwiftUI

struct HomePage2: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Image("back")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                
                ScrollView {
                    VStack(spacing: 10) {
                        Spacer()
                            .padding(.top)
                        HStack {
                            Image("galaxy-star")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 35)
                                .padding([.top, .leading, .trailing])

                            
// .font(.custom("Comfortaa-Regular", size: 10))
                        
                            Text("Cosmo Connect")
                                .font(.custom("Comfortaa-Regular", size: 30))
                                .font(.title)
                                .fontWeight(.heavy)
                                .foregroundColor(Color.white)
                                .padding(.top)
                            //Spacer()
                        }
                        .padding(.top)
                        //NASA Astronomy Picture Of The Day
                        sectionView(title: "")

                        Spacer()
                        NavigationLink("Resources can be found here", destination: Links())
                            .foregroundColor(Color.white)
                            .font(.custom("Comfortaa-Regular", size: 20))
                            

                        
                        

                            
                        
                            
                        
                        sectionView2(title: "")

                        Spacer()
                    }
                    .padding()
                }
                .ignoresSafeArea()
            }
        }
    }
        }

func sectionView(title: String) -> some View {
    VStack(alignment: .leading, spacing: 8) {
        NasaImageView2()
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .foregroundColor(.white)
    }
    .padding(.horizontal)
}
func sectionView2(title: String) -> some View {
    VStack(alignment: .leading, spacing: 8) {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .foregroundColor(.white)
    }
    .padding(.horizontal)
}

#Preview {
    HomePage2()
}

