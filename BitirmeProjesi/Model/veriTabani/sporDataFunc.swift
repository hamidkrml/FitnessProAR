import SwiftUI
import SwiftData

final class SporChartViewModel: ObservableObject {
    @Published var records: [SporData]
    
    init(records: [SporData]) {
        self.records = records
    }
    
    
    var totalSquat: Int {
        records.compactMap { $0.squat1 }.reduce(0, +)
    }
    
    var totalBiceps: Int {
        records.compactMap { $0.biceps }.reduce(0, +)
    }
    
    var totalLungeSol: Int {
        records.compactMap { $0.lungeSol }.reduce(0, +)
    }
    
    var totalLungeSag: Int {
        records.compactMap { $0.lungeSag }.reduce(0, +)
    }
    
    var totalPress: Int {
        records.compactMap { $0.press }.reduce(0, +)
    }
    
    var totalStanding: Int {
        records.compactMap { $0.standing }.reduce(0, +)
    }
    
 
    var exerciseTotals: [(exercise: String, total: Int)] {
        [
            ("Squat", totalSquat),
            ("Biceps", totalBiceps),
            ("Lunge Sol", totalLungeSol),
            ("Lunge Sag", totalLungeSag),
            ("Press", totalPress),
            ("Standing", totalStanding)
        ]
    }
}
