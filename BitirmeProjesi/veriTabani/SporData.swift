import Foundation
import SwiftData

@Model
final class SporData {
    var squat1: Int?
    var biceps: Int?
    var lungeSol: Int?  // Optional yapıldı
    var lungeSag: Int?
    var press: Int?
    var standing: Int?

    init(squat: Int? = nil, biceps: Int? = nil, lungeSol: Int? = nil, lungeSag: Int? = nil, press: Int? = nil, standing: Int? = nil) {
        self.squat1 = squat
        self.biceps = biceps
        self.lungeSol = lungeSol
        self.lungeSag = lungeSag
        self.press = press
        self.standing = standing
    }
}
