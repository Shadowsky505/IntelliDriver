import SwiftUI

struct AuthView: View {
    var body: some View {
        VStack() {
            Image("logo")
                .resizable()
                .frame(width: 100, height: 50, alignment: .center)
                .frame(maxWidth:.infinity, alignment: .center)
                .padding(.top, 50)
            Image("largeLogo")
                .resizable()
                .frame(width: 340, height: 25, alignment: .center)
                .padding(.top, 20)
            
            HStack {
                Text("¡Te damos la bienvenida de nuevo!")
                    .font(.subheadline) // Opcional: puedes ajustar el estilo del texto
                    .fontWeight(.medium)
                    .padding(.leading, 31) // Ajusta el margen izquierdo según sea necesario
                    .padding(.top, 30)
                    .foregroundColor(Color(hex: "#026b87"))
                Spacer()
            }
        }
        .frame(
            minWidth: 0, idealWidth: .infinity, maxWidth: .infinity, minHeight: 0, idealHeight: .infinity, maxHeight: .infinity, alignment: .topLeading
        )
        .background(
            LinearGradient(
                gradient: Gradient(
                    colors: [Color(hex: "FFFFFF"), Color(hex: "D7F1FF")]),
                startPoint: UnitPoint(x: 1.0, y: 0.0),
                endPoint: UnitPoint(x: 1.6, y: 1.0))
            .edgesIgnoringSafeArea(.all))
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}
