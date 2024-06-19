
import SwiftUI

struct CustomSwiftUIView: View {
    var body: some View {
        Text("Hello, SwiftUI!")
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}



struct CustomSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        CustomSwiftUIView()
    }
}
