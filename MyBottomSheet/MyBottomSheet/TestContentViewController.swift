//
//  TestContentViewController.swift
//  MyBottomSheet
//
//  Created by Ilya Cherkasov on 04.06.2023.
//

import UIKit

final class TestContentViewController: UIViewController {

    // MARK: - Private properties

    let stackView = UIStackView()

    // MARK: - UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.configureStackView()
        self.configureIncreaseHeightButton()
        self.configureDecreaseHeightButton()
    }

    // MARK: - Actions

    @objc
    private func increaseHeightButtonTapped() {

    }

    @objc
    private func decreaseHeightButtonTapped() {

    }

    // MARK: - Private methods

    private func configureStackView() {
        self.view.addSubview(self.stackView)
        stackView.distribution = .fillEqually
        stackView.spacing = 5
        self.stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.stackView.heightAnchor.constraint(equalToConstant: 40),
            self.stackView.topAnchor.constraint(
                equalTo: self.view.safeAreaLayoutGuide.topAnchor,
                constant: 40
            ),
            self.stackView.leadingAnchor.constraint(
                equalTo: self.view.safeAreaLayoutGuide.leadingAnchor,
                constant: 16
            ),
            self.stackView.trailingAnchor.constraint(
                equalTo: self.view.safeAreaLayoutGuide.trailingAnchor,
                constant: -16
            )
        ])
    }

    private func configureIncreaseHeightButton() {
        let increaseHeightButton = UIButton()
        self.stackView.addArrangedSubview(increaseHeightButton)
        increaseHeightButton.setTitle("Increase", for: .normal)
        increaseHeightButton.backgroundColor = .blue
        increaseHeightButton.layer.cornerRadius = 5
        increaseHeightButton.translatesAutoresizingMaskIntoConstraints = false
        increaseHeightButton.addTarget(self, action: #selector(increaseHeightButtonTapped), for: .touchUpInside)
    }

    private func configureDecreaseHeightButton() {
        let increaseHeightButton = UIButton()
        self.stackView.addArrangedSubview(increaseHeightButton)
        increaseHeightButton.setTitle("Decrease", for: .normal)
        increaseHeightButton.backgroundColor = .blue
        increaseHeightButton.layer.cornerRadius = 5
        increaseHeightButton.translatesAutoresizingMaskIntoConstraints = false
        increaseHeightButton.addTarget(self, action: #selector(decreaseHeightButtonTapped), for: .touchUpInside)
    }
}
