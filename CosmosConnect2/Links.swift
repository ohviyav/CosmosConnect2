//
//  Links.swift
//  CosmosConnect2
//
//  Created by Scholar on 7/17/25.
//

import SwiftUI

struct Links: View {
    var body: some View {
        ZStack {
            Image("back")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            VStack (spacing: 20) {
                Text("Resource Links:")
                    .font(.custom("Comfortaa-Regular", size: 30))
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundColor(Color.white)
                    .padding(.vertical)
                
                Link("Dark Sky",
                     destination: URL(string: "https://darksky.org/resources/what-is-light-pollution/")!)
                Link("Eyes on Exoplanets",
                     destination: URL(string: "https://eyes.nasa.gov/apps/exo/#/")!)
                Link("Eyes on the Solar System",
                     destination: URL(string: "https://eyes.nasa.gov/apps/solar-system/#/home")!)
                Link("Eyes on Astroids",
                     destination: URL(string: "https://eyes.nasa.gov/apps/asteroids/#/home")!)
                Link("Webb",
                     destination: URL(string: "https://webbtelescope.org/images")!)
                Link("ESA",
                     destination: URL(string: "https://esahubble.org/images/")!)
                Link("Vera Rubin",
                     destination: URL(string: "https://skyviewer.app/explorer")!)
                Link("Chandra",
                     destination: URL(string: "https://chandra.harvard.edu/photo/chronological10.html")!)
                
            }.foregroundColor(Color.white)                    .font(.custom("Comfortaa-Regular", size: 20))
        }
    }
}

#Preview {
    Links()
}
//                        NavigationLink("Resources can be found here", destination: Links()).foregroundColor(Color.white)
