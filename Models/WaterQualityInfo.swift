import Foundation
import CoreLocation

struct WaterQualityInfo {
    let city: String
    let pHLevel: Double
    let contaminants: [String]
    let overallQuality: String
    let lastTestDate: String
    let coordinates: CLLocationCoordinate2D
}