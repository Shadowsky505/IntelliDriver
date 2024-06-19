import SwiftUI

struct LoadingView: View {
    @State private var opacity: Double = 0.3

    var body: some View {
        VStack {
            Spacer()
            Image("logo")
                .resizable()
                .frame(width: 180, height: 100)
                .opacity(opacity)
                .onAppear {
                    withAnimation(Animation.easeInOut(duration: 1).repeatForever()) {
                        self.opacity = 1.0
                    }
                }
            Spacer()
        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
