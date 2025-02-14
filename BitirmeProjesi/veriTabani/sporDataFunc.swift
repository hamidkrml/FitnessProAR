
import Foundation

func printDatabasePath() {
    if let url = FileManager.default.urls(for: .applicationSupportDirectory, in: .userDomainMask).first {
        let sqlitePath = url.appendingPathComponent("default.store")
        print("📂 SQLite Dosya Yolu: \(sqlitePath.path)")
    }
}

// Fonksiyonu çağır

