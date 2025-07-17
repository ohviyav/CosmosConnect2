import SwiftUI

struct MainTabView: View {
    @StateObject private var viewModel = NasaImageViewModel()
    var body: some View {
        TabView {
            NavigationStack {
                HomePage2()
            }
            .tabItem {
                Image(systemName: "house.fill")
                    .foregroundColor(Color.white)
                Text("Home")
            }
            
            NavigationStack {
                FavoritesView2(viewModel: viewModel)
            }
            .tabItem {
                Image(systemName: "suit.heart.fill")
                    .foregroundColor(Color.white)
                Text("Favorites")
            }
            
            NavigationStack {
                LightPollution2()
            }
            .tabItem {
                Image(systemName: "rays")
                    .foregroundColor(Color.white)
                Text("Light Pollution")
            }
        }
    }
}

#Preview {
    MainTabView()
}
