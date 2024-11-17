import SwiftUI

struct ContentView: View {
    @State private var showMainView = false
    
    var body: some View {
        if showMainView {
            TabBarView()
        } else {
            SplashScreenView()
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                        showMainView = true
                    }
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
