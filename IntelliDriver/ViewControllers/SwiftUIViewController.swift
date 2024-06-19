import UIKit
import SwiftUI

class SwiftUIViewController: UIViewController {
    private var hasShownLoadingScreen = false

    override func viewDidLoad() {
        super.viewDidLoad()

        // Crear la vista SwiftUI
        let swiftUIView = CustomSwiftUIView()

        // Crear un UIHostingController con la vista SwiftUI
        let hostingController = UIHostingController(rootView: swiftUIView)

        // Añadir el hostingController como hijo del UIViewController
        addChild(hostingController)
        hostingController.view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(hostingController.view)

        // Configurar las restricciones
        NSLayoutConstraint.activate([
            hostingController.view.topAnchor.constraint(equalTo: view.topAnchor),
            hostingController.view.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            hostingController.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            hostingController.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])

        hostingController.didMove(toParent: self)

        NotificationCenter.default.addObserver(self, selector: #selector(didFinishLoading), name: Notification.Name("LoadingDidFinish"), object: nil)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // Mostrar la pantalla de carga solo una vez
        if !hasShownLoadingScreen {
            hasShownLoadingScreen = true
            showLoadingScreen()
        }
    }

    func showLoadingScreen() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let loadingVC = storyboard.instantiateViewController(withIdentifier: "LoadingViewController") as? LoadingViewController {
            present(loadingVC, animated: true, completion: nil)
        }
    }

    @objc func didFinishLoading() {
        // Acción después de terminar la carga
    }

    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}
