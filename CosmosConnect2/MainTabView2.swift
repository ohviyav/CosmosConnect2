import SwiftUI

struct MainTabView: View {
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
                LightPollution2()
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
