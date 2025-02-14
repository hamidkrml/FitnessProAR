import SwiftData

@MainActor
struct verikayit {
    
    static let container: ModelContainer = {
        do {
            return try ModelContainer(for: SporData.self)
        } catch {
            fatalError("ModelContainer oluşturulamadı: \(error)")
        }
    }()
    
    // Container'ın ana context'ini döndüren computed property.
    static var modelContext: ModelContext {
        container.mainContext
    }
    
    /// Tüm sayfalardan erişilebilen veri kaydetme fonksiyonu
    /// - Parameter lungeSolCount: Kaydedilecek lungeSol sayısı
    static func saveLungeCount( lungeSolCount: Int = 0, bicepsCount:Int = 0 ) {
        let newlung = SporData(lungeSol: lungeSolCount)
        let newbicep = SporData(biceps: bicepsCount)
        modelContext.insert(newbicep)
        modelContext.insert(newlung)
        
        do {
            try modelContext.save()
            print("Lunge Sol Sayısı Kaydedildi: \(lungeSolCount), Biceps Sayısı Kaydedildi: \(bicepsCount)")
            
        } catch {
            print("Hata: Veri kaydedilemedi! \(error.localizedDescription)")
        }
    }
}
