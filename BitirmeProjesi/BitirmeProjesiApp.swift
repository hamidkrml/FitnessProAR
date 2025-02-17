import SwiftUI
import SwiftData

@main
struct BitirmeProjesiApp: App {
    
    let modelContainer = try! ModelContainer(for: SporData.self)

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
