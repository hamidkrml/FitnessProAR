import SwiftUI
import SwiftData
import FirebaseCore
import FirebaseAuth

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}
@main
struct BitirmeProjesiApp: App {
    
    let modelContainer = try! ModelContainer(for: SporData.self)
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            NavigationView {
                tanitimSayfasi()
            }
            // modelContext'i view environment'ına ekliyoruz.
            .modelContext(modelContainer.mainContext)
        }
    }
}
