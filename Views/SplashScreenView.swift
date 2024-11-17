import SwiftUI

struct SplashScreenView: View {
    @State private var showDrop = false
    @State private var expandRipple = false
    @State private var fadeOutDrop = false
    @State private var showTitle = false
    
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
            Circle()
                .fill(Color.white)
                .frame(width: 30, height: 30)
                .scaleEffect(showDrop ? 1 : 0.1)
                .offset(y: showDrop ? 0 : -200)
                .opacity(fadeOutDrop ? 0 : 1)
                .animation(.spring(dampingFraction: 0.6).delay(0.3), value: showDrop)
                .animation(.easeOut(duration: 0.5).delay(0.8), value: fadeOutDrop)
            Circle()
                .stroke(lineWidth: 2)
                .frame(width: expandRipple ? 300 : 30, height: expandRipple ? 300 : 30)
                .foregroundColor(.white.opacity(0.5))
                .scaleEffect(expandRipple ? 1 : 0.1)
                .opacity(expandRipple ? 0 : 1)
                .animation(.easeOut(duration: 1).delay(0.6), value: expandRipple)
            
            Text("WaterWise")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .opacity(showTitle ? 1 : 0)
                .animation(.easeIn.delay(1.5), value: showTitle)
        }
        .onAppear {
            showDrop = true
            expandRipple = true
            fadeOutDrop = true
            showTitle = true
        }
    }
}
