import SwiftUI
import MapKit

struct Screen1View: View {
    @State private var searchQuery = ""
    @State private var cityWaterQuality: WaterQualityInfo?
    
    let citiesData: [String: WaterQualityInfo] = [
        "New York": WaterQualityInfo(
            city: "New York",
            pHLevel: 7.5,
            contaminants: ["Lead", "Chlorine", "Fluoride"],
            overallQuality: "Good",
            lastTestDate: "October 2024",
            coordinates: CLLocationCoordinate2D(latitude: 40.7128, longitude: -74.0060)
        ),
        "Los Angeles": WaterQualityInfo(
            city: "Los Angeles",
            pHLevel: 6.8,
            contaminants: ["Chlorine", "Mercury", "Pesticides"],
            overallQuality: "Poor",
            lastTestDate: "September 2024",
            coordinates: CLLocationCoordinate2D(latitude: 34.0522, longitude: -118.2437)
        ),
        "Mumbai": WaterQualityInfo(
            city: "Mumbai",
            pHLevel: 6.8,
            contaminants: ["Chlorine", "Mercury", "Pesticides"],
            overallQuality: "Poor",
            lastTestDate: "September 2024",
            coordinates: CLLocationCoordinate2D(latitude: 19.0760, longitude: 72.8777)
        ),
        "London": WaterQualityInfo(
            city: "London",
            pHLevel: 7.2,
            contaminants: ["Chlorine", "Nitrates"],
            overallQuality: "Good",
            lastTestDate: "October 2024",
            coordinates: CLLocationCoordinate2D(latitude: 51.5074, longitude: -0.1278)
        ),
        "Tokyo": WaterQualityInfo(
            city: "Tokyo",
            pHLevel: 7.8,
            contaminants: ["Chlorine", "Fluoride"],
            overallQuality: "Excellent",
            lastTestDate: "October 2024",
            coordinates: CLLocationCoordinate2D(latitude: 35.6762, longitude: 139.6503)
        ),
        "Paris": WaterQualityInfo(
            city: "Paris",
            pHLevel: 7.4,
            contaminants: ["Chlorine", "Lead"],
            overallQuality: "Good",
            lastTestDate: "September 2024",
            coordinates: CLLocationCoordinate2D(latitude: 48.8566, longitude: 2.3522)
        ),
        "Sydney": WaterQualityInfo(
            city: "Sydney",
            pHLevel: 7.6,
            contaminants: ["Chlorine", "Fluoride"],
            overallQuality: "Good",
            lastTestDate: "August 2024",
            coordinates: CLLocationCoordinate2D(latitude: -33.8688, longitude: 151.2093)
        ),
        "Berlin": WaterQualityInfo(
            city: "Berlin",
            pHLevel: 7.3,
            contaminants: ["Chlorine", "Nitrates"],
            overallQuality: "Good",
            lastTestDate: "October 2024",
            coordinates: CLLocationCoordinate2D(latitude: 52.5200, longitude: 13.4050)
        ),
        "Cape Town": WaterQualityInfo(
            city: "Cape Town",
            pHLevel: 7.0,
            contaminants: ["Chlorine", "Fluoride"],
            overallQuality: "Fair",
            lastTestDate: "September 2024",
            coordinates: CLLocationCoordinate2D(latitude: -33.9249, longitude: 18.4241)
        ),
        "Mexico City": WaterQualityInfo(
            city: "Mexico City",
            pHLevel: 6.5,
            contaminants: ["Chlorine", "Lead", "Bacteria"],
            overallQuality: "Poor",
            lastTestDate: "September 2024",
            coordinates: CLLocationCoordinate2D(latitude: 19.4326, longitude: -99.1332)
        ),
        "Columbus": WaterQualityInfo(
            city: "Columbus",
            pHLevel: 7.3,
            contaminants: ["Chlorine", "Lead", "Nitrates"],
            overallQuality: "Good",
            lastTestDate: "October 2024",
            coordinates: CLLocationCoordinate2D(latitude: 39.9612, longitude: -82.9988)
        )
    ]
    
    var body: some View {
        VStack {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
                .padding(.bottom, 20)
            
            TextField("Enter city name", text: $searchQuery, prompt: Text("Enter city name").foregroundColor(.gray))
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                .foregroundColor(.gray)
                .shadow(radius: 5)
                .padding(.horizontal)
                .font(.title2)
                .onSubmit {
                    cityWaterQuality = citiesData[searchQuery]
                }
            
            if let cityInfo = cityWaterQuality {
                NavigationLink(destination: CityDetailView(cityInfo: cityInfo)) {
                    Text("View \(cityInfo.city) Water Quality")
                        .font(.headline)
                        .foregroundColor(colorForQuality(cityInfo.overallQuality))
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 15).fill(backgroundColorForQuality(cityInfo.overallQuality)))
                        .shadow(radius: 8)
                        .scaleEffect(1.05)
                        .padding(.top)
                }
                .buttonStyle(PlainButtonStyle())
            } else if !searchQuery.isEmpty {
                Text("Loading...")
                    .foregroundColor(.white)
                    .font(.body)
                    .padding()
            }
            
            Spacer()
        }
        .padding()
        .navigationTitle("⠀   Search City Water Quality")
        .background(Color(.systemGroupedBackground))
    }
    
    private func colorForQuality(_ quality: String) -> Color {
        switch quality {
        case "Excellent":
            return .green
        case "Good":
            return .blue
        case "Poor":
            return .red
        case "Very Poor":
            return .purple
        default:
            return .gray
        }
    }
    
    private func backgroundColorForQuality(_ quality: String) -> Color {
        switch quality {
        case "Excellent":
            return .green.opacity(0.2)
        case "Good":
            return .blue.opacity(0.2)
        case "Poor":
            return .red.opacity(0.2)
        case "Very Poor":
            return .purple.opacity(0.2)
        default:
            return .gray.opacity(0.2)
        }
    }
}

struct CityDetailView: View {
    let cityInfo: WaterQualityInfo
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Water Quality Information for \(cityInfo.city)")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(colorForQuality(cityInfo.overallQuality))
                    .padding(.bottom, 10)
                
                Divider()
                    .padding(.bottom, 10)
                
                Map(coordinateRegion: .constant(
                    MKCoordinateRegion(
                        center: cityInfo.coordinates,
                        span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
                    )
                ))
                .frame(height: 250)
                .cornerRadius(15)
                .shadow(radius: 8)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Overall Water Quality: \(cityInfo.overallQuality)")
                        .font(.headline)
                        .foregroundColor(colorForQuality(cityInfo.overallQuality))
                    
                    Text("pH Level: \(cityInfo.pHLevel, specifier: "%.1f")")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Text("Contaminants: \(cityInfo.contaminants.joined(separator: ", "))")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Text("Last Test Date: \(cityInfo.lastTestDate)")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                .padding(.top, 15)
                
                Spacer()
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 25).fill(backgroundColorForQuality(cityInfo.overallQuality)).shadow(radius: 10))
        }
        .navigationTitle(cityInfo.city)
        .background(Color(.systemGroupedBackground))
    }
    
    private func colorForQuality(_ quality: String) -> Color {
        switch quality {
        case "Excellent":
            return .green
        case "Good":
            return .blue
        case "Poor":
            return .red
        case "Very Poor":
            return .purple
        default:
            return .gray
        }
    }
    
    private func backgroundColorForQuality(_ quality: String) -> Color {
        switch quality {
        case "Excellent":
            return .green.opacity(0.1)
        case "Good":
            return .blue.opacity(0.1)
        case "Poor":
            return .red.opacity(0.1)
        case "Very Poor":
            return .purple.opacity(0.1)
        default:
            return .gray.opacity(0.1)
        }
    }
}
