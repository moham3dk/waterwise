import SwiftUI

struct TabBarView: View {
    var body: some View {
        VStack {
            TabView {
                NavigationView {
                    Screen1View()
                }
                .tabItem {
                    Label("Water Quality", systemImage: "drop.fill")
                }
                
                NavigationView {
                    Screen2View()
                }
                .tabItem {
                    Label("Information", systemImage: "info.circle.fill")
                }
                
                NavigationView {
                    Screen3View()
                }
                .tabItem {
                    Label("Donate", systemImage: "dollarsign.circle.fill")
                }
            }
        }
        .padding(.vertical, 15) 
    }
}
