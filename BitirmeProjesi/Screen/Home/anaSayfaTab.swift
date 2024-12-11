import SwiftUI

struct ContentView: View {
    init() {
        UITabBar.setupAppearance() // Ayarları burada çağırıyoruz
    }
   
    var body: some View {
        
        TabView  {
            diyet()
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
                .tabViewStyle(.sidebarAdaptable)
        }
        
    }
}

#Preview {
    ContentView()
}
