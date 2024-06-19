import SwiftUI

class txtCorreo: ObservableObject {
    @Published var text: String = ""
}

struct MainView: View {
    @ObservedObject var txtCorreo: txtCorreo
    var buttonAction: () -> Void // Closure para la acción del botón

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
                Text("Chat Rápido y útil para tu taller")
                    .bold()
                    .font(.title2)
                    .padding(.top, 10)
                TextField("Ingrese su texto", text: $txtCorreo.text)
                    .padding()
                    .cornerRadius(10)
                    .padding(.horizontal, 31.0)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(hex: "#004259"), lineWidth: 2)
                            .padding(.horizontal, 31)
                    )

                Button(action: {
                    buttonAction() // Llama al closure cuando se presiona el botón
                }) {
                    Text("Iniciar Sesión")
                        .padding(10)
                        .frame(maxWidth: .infinity)
                        .background(Color(hex: "#026B87"))
                        .foregroundColor(.white)
                        .cornerRadius(50)
                        .padding(.horizontal, 31.0)
                        .padding(.top, 10)
                }
                Image("dividerHori")
                    .resizable()
                    .frame(width: 350, height: 17, alignment: .center)
                    .padding()
                Button(action: {
                    buttonAction()
                }){
                    HStack{
                        Image("googleIcon")
                            .resizable()
                            .frame(width: 20, height: 20, alignment: .center)
                        Text("Continuar con Google")
                            .foregroundColor(.black)
                    }
                    .padding(10)
                    .frame(maxWidth: .infinity)
                    .cornerRadius(25)
                    .overlay(
                        RoundedRectangle(cornerRadius: 25)
                            .stroke(Color(hex: "004259"),lineWidth: 1.0)
                    )
                    .padding(.horizontal,31)
                }
                Text("Al continuar, estas aceptando las Condiciones de servicios y la Política de privacidad de IntelliDriver")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,50)
                    .padding()
                
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

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(txtCorreo: txtCorreo(), buttonAction: {})
    }
}
