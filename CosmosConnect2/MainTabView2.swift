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
        }
    }
}

#Preview {
    MainTabView()
}
