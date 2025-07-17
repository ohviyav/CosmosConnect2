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
                Text("Home")
            }
            
            NavigationStack {
                FavoritesView2(viewModel: viewModel)
            }
            .tabItem {
                Image(systemName: "suit.heart.fill")
                Text("Favorites")
            }
            
            NavigationStack {
                LightPollution2()
            }
            .tabItem {
                Image(systemName: "rays")
                Text("Light Pollution")
            }
        }
    }
}

#Preview {
    MainTabView()
}
