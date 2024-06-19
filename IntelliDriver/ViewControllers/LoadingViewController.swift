import UIKit
import SwiftUI

class LoadingViewController: UIViewController {
    
    private var campoCorreo = txtCorreo()
    
    private func btnAuth(){
        print("BOTON PRESIONADO CON ESTE CORREO: \(campoCorreo.text)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let loadingView = UIHostingController(rootView: LoadingView())
        addChild(loadingView)
        loadingView.view.frame = self.view.bounds
        loadingView.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.view.addSubview(loadingView.view)
        loadingView.didMove(toParent: self)

        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            let mainView = UIHostingController(rootView: MainView(txtCorreo: self.campoCorreo, buttonAction: self.btnAuth))
            
            // Configuración para pantalla completa
            
            mainView.modalPresentationStyle = .fullScreen
            mainView.modalTransitionStyle = .crossDissolve
            self.present(mainView, animated: true, completion: nil)
        }
    }
}
