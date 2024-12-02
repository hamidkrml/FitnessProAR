import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            asd()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            dsa()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
            
            sad()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

#Preview {
    ContentView()
}
