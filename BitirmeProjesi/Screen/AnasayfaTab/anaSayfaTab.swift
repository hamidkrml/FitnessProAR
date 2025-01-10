import SwiftUI

struct ContentView: View {
    init() {
        UITabBar.setupAppearance() // Ayarları burada çağırıyoruz
    }
   
    var body: some View {
        VStack{
            TabView  {
                
                spor()
                    .tabItem {
                        Label("Fitnes", systemImage: "figure.dance")
                    }
                
                    Diyet()
                    .tabItem {
                        Label("Diyet", systemImage: "heart.text.clipboard.fill")
                    }
                
                
                sad()
                    .tabItem {
                        Label("Level", systemImage: "slider.horizontal.2.arrow.trianglehead.counterclockwise")
                    }
                hesapbilgileri()
                    .tabItem {
                        Label("hesap ", systemImage: "lock.fill")
                    }
                    .tabViewStyle(.sidebarAdaptable)
            }
        }
       
        
    }
}

#Preview {
    ContentView()
}
