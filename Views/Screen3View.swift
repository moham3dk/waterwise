import SwiftUI

struct Screen3View: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Donate to Support Clean Water Initiatives")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.bottom, 10)
                
                Divider()
                    .padding(.bottom, 10)
                
                Text("These organizations are dedicated to providing clean water to communities in need. Your donation can make a huge difference.")
                    .font(.body)
                    .foregroundColor(.secondary)
                    .padding(.bottom, 20)
                
                // Charity 1: Charity: Water
                VStack(alignment: .leading, spacing: 10) {
                    Text("1. Charity: Water - Kalahari Clean Water Project")
                        .font(.headline)
                        .foregroundColor(.blue)
                    Text("Charity: Water is focused on bringing clean and safe drinking water to people in developing countries. Their Kalahari project aims to provide clean water to communities in the Kalahari desert.")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Link("Donate Now", destination: URL(string: "https://www.charitywater.org/kalahari?&utm_source=liq&utm_medium=cpc&utm_campaign=kalahari_clean_water_africa&scid=4674767&kw=44010109&pub_cr_id=704095031683&device=m&network=g&targetid=kwd-489029841095&loc_interest_ms=&loc_physical_ms=9014870&tc=Cj0KCQiAouG5BhDBARIsAOc08RTJoCKsfOY44OE_2k1sjZXsDurD-eRLSfPoEwDPwu4lO60mjuYaxUwaArlEEALw_wcB&rl_key=801958ba9d8b5b94921c5240258d2d22&gad_source=1")!)
                        .font(.subheadline)
                        .foregroundColor(.blue)
                        .padding(.top, 5)
                }
                .padding(.bottom, 20)
                
                // Charity 2: Wells of Life
                VStack(alignment: .leading, spacing: 10) {
                    Text("2. Wells of Life")
                        .font(.headline)
                        .foregroundColor(.blue)
                    Text("Wells of Life works to provide clean and safe water to the people of Uganda by drilling wells and building water systems in rural areas.")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Link("Donate Now", destination: URL(string: "https://www.wellsoflife.org/?gad_source=1&gclid=Cj0KCQiAouG5BhDBARIsAOc08RTiXFAGkDICQjSOhjp7aXNdxpxrBk0RzDpRnXN9-WpvZeorzFiwgZMaAmOVEALw_wcB")!)
                        .font(.subheadline)
                        .foregroundColor(.blue)
                        .padding(.top, 5)
                }
                .padding(.bottom, 20)
                
                // Charity 3: Water.cc
                VStack(alignment: .leading, spacing: 10) {
                    Text("3. Water.cc")
                        .font(.headline)
                        .foregroundColor(.blue)
                    Text("Water.cc provides clean water solutions to communities around the world, especially focusing on regions facing severe water scarcity.")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Link("Donate Now", destination: URL(string: "https://water.cc/donate/?apl=701TQ00000GHPLlYAP&utm_medium=ppc&utm_source=google&utm_campaign=gpd-donate-fye2025-gengiving-search&gad_source=1&gbraid=0AAAAApVBnacCUlaFkUOYbNbeaheNsElJp&gclid=Cj0KCQiAouG5BhDBARIsAOc08RTDkVc3P5neOxsNoXn3WqRP__zsqp32ZJ0hWFpzpGPGIEGVqVyuUkgaAknTEALw_wcB")!)
                        .font(.subheadline)
                        .foregroundColor(.blue)
                        .padding(.top, 5)
                }
                .padding(.bottom, 20)
                
                Spacer()
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 25).fill(Color(.systemGroupedBackground)).shadow(radius: 10))
        }
        .navigationTitle("Donate to Clean Water")
        .background(Color(.systemGroupedBackground))
    }
}
