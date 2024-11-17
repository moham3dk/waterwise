import SwiftUI

struct HowWaterAffectsPeopleView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("How Water Scarcity and Contamination Affect People")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.bottom, 10)
                
                Divider()
                    .padding(.bottom, 10)
                
                Text("Water scarcity and contamination affect billions of people worldwide. Here’s how these issues impact individuals and communities:")
                    .font(.body)
                    .foregroundColor(.secondary)
                    .padding(.bottom, 20)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("• 500 Million People Facing Severe Water Scarcity")
                        .font(.headline)
                    Text("Approximately half a billion people globally face severe water scarcity.")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Text("• 1.7 Billion Have Access to Contaminated Water")
                        .font(.headline)
                    Text("Around 1.7 billion people only have access to water with fecal contamination.")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Text("• 1.4 Million Deaths Annually from Unsanitary Water")
                        .font(.headline)
                    Text("Each year, 1.4 million people die due to unsanitary conditions and unsafe drinking water.")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Text("• 1.1 Million People Sick in the U.S. Annually")
                        .font(.headline)
                    Text("In the U.S., 1.1 million people become ill annually from water contaminants.")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Text("• Water Shortages Predicted for 2050")
                        .font(.headline)
                    Text("By 2050, 2/3 of the global population may face water shortages.")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Text("Water contamination is a global issue, with far-reaching consequences that need urgent attention.")
                        .font(.body)
                        .foregroundColor(.secondary)
                }
                
                Spacer()
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 25).fill(Color(.systemGroupedBackground)).shadow(radius: 10))
        }
        .navigationTitle("How Water Contamination Affects People")
        .background(Color(.systemGroupedBackground))
    }
}

struct TypesOfWaterPollutionView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Types of Water Pollution")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.bottom, 10)
                
                Divider()
                    .padding(.bottom, 10)
                
                Text("There are different types of water pollution that affect our water sources. Here are the primary types:")
                    .font(.body)
                    .foregroundColor(.secondary)
                    .padding(.bottom, 20)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("• Point Source Pollution")
                        .font(.headline)
                    Text("Contamination originating from a single, identifiable source, such as wastewater from factories or septic system leaks.")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Text("• Nonpoint Source Pollution")
                        .font(.headline)
                    Text("Diffuse sources of contamination, such as agricultural runoff or stormwater, which are hard to regulate.")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Text("• Transboundary Pollution")
                        .font(.headline)
                    Text("Contamination crossing borders, often due to industrial, agricultural, or municipal discharge spilling into another country’s water system.")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Text("Each of these types of pollution presents unique challenges for regulation and mitigation.")
                        .font(.body)
                        .foregroundColor(.secondary)
                }
                
                Spacer()
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 25).fill(Color(.systemGroupedBackground)).shadow(radius: 10))
        }
        .navigationTitle("Types of Water Pollution")
        .background(Color(.systemGroupedBackground))
    }
}

struct SourcesView: View {
    var sources = [
        "• World Health Organization (WHO)",
        "• UNICEF",
        "• U.S. Environmental Protection Agency (EPA)",
        "• Water.org",
        "• National Institute for Water Resources"
    ]
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Sources")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.bottom, 10)
                
                Divider()
                    .padding(.bottom, 10)
                
                VStack(alignment: .leading, spacing: 10) {
                    ForEach(sources, id: \.self) { source in
                        Text(source)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
                
                Spacer()
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 25).fill(Color(.systemGroupedBackground)).shadow(radius: 10))
        }
        .navigationTitle("Sources")
        .background(Color(.systemGroupedBackground))
    }
}

struct HowToTellContaminatedWaterView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("How to Tell if Water is Contaminated")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.bottom, 10)
                
                Divider()
                    .padding(.bottom, 10)
                
                // Contamination Signs
                VStack(alignment: .leading, spacing: 10) {
                    Text("1. Health Issues After Drinking Tap Water")
                        .font(.headline)
                    Text("If you or others in your home experience health problems after drinking tap water, it could be contaminated.")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Text("2. Discolored Water")
                        .font(.headline)
                    Text("Your water may appear orange, brown, cloudy, or murky, which is a sign of contamination.")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Text("3. Bad Smell")
                        .font(.headline)
                    Text("Contaminated water may smell like rotten eggs (sulfur), or like chlorine, indicating too much chlorine has been added.")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Text("4. Strange Taste")
                        .font(.headline)
                    Text("A metallic, fishy, bitter, salty, or soapy taste in water is a common sign of contamination.")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Text("5. Corroded Pipes")
                        .font(.headline)
                    Text("If your pipes are corroded, this can contribute to water contamination.")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Text("6. Low Water Pressure")
                        .font(.headline)
                    Text("Low water pressure may be a sign that the water is contaminated.")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Text("7. Visible Sediment")
                        .font(.headline)
                    Text("If there are sediments or dirt in your water, it could indicate contamination.")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Text("8. Unclean Dishes or Laundry")
                        .font(.headline)
                    Text("If your dishes or laundry do not get clean, or if clothes fade quickly, the water may be contaminated.")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Text("9. Rusted Silverware")
                        .font(.headline)
                    Text("Rusted silverware may indicate an excess of iron in the water, which is a sign of contamination.")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Text("10. Oily Film on Water")
                        .font(.headline)
                    Text("An oily film on the water’s surface could be a sign of contamination.")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Text("11. Blue/Green Stains")
                        .font(.headline)
                    Text("Blue or green stains in your water may indicate a lower-than-normal pH level, which could be a sign of contamination.")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Text("12. Detergent Smell")
                        .font(.headline)
                    Text("A detergent-like smell may suggest contamination from a septic tank leak.")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Text("13. Residue on Utensils/Faucets")
                        .font(.headline)
                    Text("If utensils, silverware, or faucets leave a residue, the water might be contaminated.")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Text("14. Dirty Hands After Washing")
                        .font(.headline)
                    Text("If your hands feel dirty despite washing them, the water may be contaminated.")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                
                // Testing Reminder
                Text("It's important to note that water can still be contaminated even if you don't observe these signs. The best way to be sure is to have your water tested professionally on a regular basis.")
                    .font(.body)
                    .foregroundColor(.secondary)
                    .padding(.bottom, 20)
                
                // Sources
                Text("Sources:")
                    .font(.headline)
                VStack(alignment: .leading, spacing: 5) {
                    Text("• Benchmark Environmental Engineering")
                    Text("• ETR Laboratories, Water and Environmental Testing")
                    Text("• Casios.co.uk")
                    Text("• A & T Well and Pump")
                    Text("• Winters Home Services")
                    Text("• Blazer Heating, Air, and Plumbing")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Spacer()
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 25).fill(Color(.systemGroupedBackground)).shadow(radius: 10))
        }
        .navigationTitle("Contaminated Water Signs")
        .background(Color(.systemGroupedBackground))
    }
}

struct WhatCausesContaminationView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("What Causes Water Contamination?")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.bottom, 10)
                
                Divider()
                    .padding(.bottom, 10)
                
                Text("Water contamination occurs when harmful substances or pollutants enter our water supply. These contaminants can be either natural or human-made, but human activity is the most common cause. Here are some of the major causes:")
                    .font(.body)
                    .foregroundColor(.secondary)
                    .padding(.bottom, 20)
                
                // Causes of Contamination
                VStack(alignment: .leading, spacing: 10) {
                    Text("• Chemicals and Fertilizers")
                        .font(.headline)
                    Text("Chemicals used in farming, such as pesticides and fertilizers, can run off into water sources during heavy rainfall, contaminating drinking water.")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Text("• Industrial Waste")
                        .font(.headline)
                    Text("Manufacturing plants and factories may discharge pollutants, such as chemicals or heavy metals, into nearby water sources.")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Text("• Oil Pollution")
                        .font(.headline)
                    Text("Oil spills or leaks from industrial activities can contaminate water supplies.")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Text("• Radioactive Substances")
                        .font(.headline)
                    Text("Radioactive materials from mining or industrial activities can seep into groundwater, making it unsafe for consumption.")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Text("• Leaks from Landfills or Fuel Tanks")
                        .font(.headline)
                    Text("When landfills leak, they can release hazardous substances into nearby groundwater sources.")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Text("• Large Industrial Animal Farms")
                        .font(.headline)
                    Text("Waste from large animal farming operations can contaminate local water supplies.")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Text("• Sewer Overflows and Wastewater")
                        .font(.headline)
                    Text("Sewage overflows or wastewater discharges into rivers and lakes can introduce dangerous pathogens and pollutants into the water.")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                
                Spacer()
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 25).fill(Color(.systemGroupedBackground)).shadow(radius: 10))
        }
        .navigationTitle("Causes of Water Contamination")
        .background(Color(.systemGroupedBackground))
    }
}

struct HowToAvoidContaminationView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("How to Avoid Water Contamination")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.bottom, 10)
                
                Divider()
                    .padding(.bottom, 10)
                
                Text("Water contamination can be avoided or minimized by taking certain steps. Here’s how you can reduce the risk of contamination in your home:")
                    .font(.body)
                    .foregroundColor(.secondary)
                    .padding(.bottom, 20)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("• Proper Waste Disposal")
                        .font(.headline)
                    Text("Dispose of chemicals, fertilizers, and oils in designated containers, and avoid dumping them down drains or sewers.")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Text("• Install a Water Filtration System")
                        .font(.headline)
                    Text("Using a water filtration system can help remove contaminants from your tap water and improve its safety.")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Text("• Regularly Maintain Plumbing")
                        .font(.headline)
                    Text("Corroded pipes can contribute to contamination. Ensure regular inspections and maintenance of your plumbing system.")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Text("• Reduce Industrial Waste")
                        .font(.headline)
                    Text("Support and advocate for regulations that limit industrial discharge into water sources.")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Text("• Monitor Wastewater Treatment Systems")
                        .font(.headline)
                    Text("Ensure wastewater systems are functioning properly to prevent overflows that could contaminate nearby water supplies.")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Text("• Test Water Regularly")
                        .font(.headline)
                    Text("Have your water tested periodically for contaminants, especially if you use well water.")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                
                Spacer()
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 25).fill(Color(.systemGroupedBackground)).shadow(radius: 10))
        }
        .navigationTitle("Prevent Water Contamination")
        .background(Color(.systemGroupedBackground))
    }
}

struct Screen2View: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Divider()
                    .padding(.horizontal)
                
                NavigationLink(destination: HowToTellContaminatedWaterView()) {
                    Text("How to Tell if Water is Contaminated")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color.blue.opacity(0.2)))
                        .foregroundColor(.blue)
                        .shadow(radius: 8)
                }
                .buttonStyle(PlainButtonStyle())
                
                NavigationLink(destination: WhatCausesContaminationView()) {
                    Text("What Causes Water Contamination")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color.green.opacity(0.2)))
                        .foregroundColor(.green)
                        .shadow(radius: 8)
                }
                .buttonStyle(PlainButtonStyle())
                
                NavigationLink(destination: HowToAvoidContaminationView()) {
                    Text("How to Avoid Water Contamination")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color.orange.opacity(0.2)))
                        .foregroundColor(.orange)
                        .shadow(radius: 8)
                }
                .buttonStyle(PlainButtonStyle())
                
                NavigationLink(destination: HowWaterAffectsPeopleView()) {
                    Text("How Water Scarcity & Contamination Affect People")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color.purple.opacity(0.2)))
                        .foregroundColor(.purple)
                        .shadow(radius: 8)
                }
                .buttonStyle(PlainButtonStyle())
                
                NavigationLink(destination: TypesOfWaterPollutionView()) {
                    Text("Types of Water Pollution")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color.yellow.opacity(0.2)))
                        .foregroundColor(.yellow)
                        .shadow(radius: 8)
                }
                .buttonStyle(PlainButtonStyle())
                
                NavigationLink(destination: SourcesView()) {
                    Text("Sources")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color.gray.opacity(0.2)))
                        .foregroundColor(.gray)
                        .shadow(radius: 8)
                }
                .buttonStyle(PlainButtonStyle())
                
                Spacer()
            }
            .padding()
            .background(Color(.systemGroupedBackground))
            .cornerRadius(25)
            .shadow(radius: 10)
            .navigationTitle("Water Quality Info")
        }
    }
}
