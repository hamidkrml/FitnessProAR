import SwiftData
import SwiftUI

@Observable
class SporViewModel1 : ObservableObject{
    var modelContext: ModelContext
    var _sporDataList: [SporData] = []

    init(modelContext: ModelContext) {
        self.modelContext = modelContext
        fetchData()
    }

    // SwiftData'dan veriyi çek
    func fetchData() {
        let fetchDescriptor = FetchDescriptor<SporData>()
        do {
            _sporDataList = try modelContext.fetch(fetchDescriptor)
        } catch {
            print("Veri çekme hatası: \(error)")
        }
    }

    // Güncelleme fonksiyonu: Sadece değişen değeri günceller
    func updateSportCount(squat: Int? = nil, biceps: Int? = nil, lungeSol: Int? = nil, lungerSag: Int? = nil, press: Int? = nil, standing: Int? = nil) {
        if let existingData = _sporDataList.first {
            if let squat = squat { existingData.squat = squat }
            if let biceps = biceps { existingData.biceps = biceps }
            if let lungeSol = lungeSol { existingData.lungeSol = lungeSol }
            if let lungerSag = lungerSag { existingData.lungerSag = lungerSag }
            if let press = press { existingData.press = press }
            if let standing = standing { existingData.standing = standing }
        } else {
            let newData = SporData(
                squat: squat ?? 0,
                biceps: biceps ?? 0,
                lungeSol: lungeSol ?? 0,
                lungerSag: lungerSag ?? 0,
                press: press ?? 0,
                standing: standing ?? 0
            )
            modelContext.insert(newData)
        }

        do {
            try modelContext.save()
            fetchData() // Güncellenen veriyi tekrar çek
        } catch {
            print("Veri kaydetme hatası: \(error)")
        }
    }
}
