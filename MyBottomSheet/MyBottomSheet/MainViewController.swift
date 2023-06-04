//
//  ViewController.swift
//  MyBottomSheet
//
//  Created by Ilya Cherkasov on 04.06.2023.
//

import UIKit

class MainViewController: UIViewController {

    // MARK: - Private properties

    private let openBottomSheetButton = UIButton()

    // MARK: - UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.configureBottomSheetButton()
    }

    // MARK: - Actions

    @objc
    private func openBottomSheet() {
        let viewController = TestContentViewController()
        viewController.modalPresentationStyle = .custom
        viewController.transitioningDelegate = nil
        self.present(viewController, animated: true)
    }

    // MARK: - Private methods

    private func configureBottomSheetButton() {
        self.view.addSubview(self.openBottomSheetButton)
        self.openBottomSheetButton.setTitle("Open Bottom Sheet", for: .normal)
        self.openBottomSheetButton.backgroundColor = .blue
        self.openBottomSheetButton.layer.cornerRadius = 5
        self.openBottomSheetButton.translatesAutoresizingMaskIntoConstraints = false
        self.openBottomSheetButton.addTarget(self, action: #selector(openBottomSheet), for: .touchUpInside)
        NSLayoutConstraint.activate([
            self.openBottomSheetButton.centerXAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor),
            self.openBottomSheetButton.centerYAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerYAnchor),
            self.openBottomSheetButton.widthAnchor.constraint(equalToConstant: 200),
            self.openBottomSheetButton.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
}

