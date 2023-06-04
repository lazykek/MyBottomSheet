//
//  BottomSheetTransitioningDelegate.swift
//  MyBottomSheet
//
//  Created by Ilya Cherkasov on 04.06.2023.
//

import UIKit

protocol BottomSheetPresentationControllerFactory {
    func makeBottomSheetPresentationController(
        presentedViewController: UIViewController,
        presentingViewController: UIViewController?
    ) -> BottomSheetPresentationController
}

final class BottomSheetTransitioningDelegate: NSObject, UIViewControllerTransitioningDelegate {

    // MARK: - Private properties

    let factory: BottomSheetPresentationControllerFactory

    // MARK: - Initializaion

    init(factory: BottomSheetPresentationControllerFactory) {
        self.factory = factory
    }

    // MARK: -

    func presentationController(
        forPresented presented: UIViewController,
        presenting: UIViewController?,
        source: UIViewController
    ) -> UIPresentationController? {
        self.factory.makeBottomSheetPresentationController(
            presentedViewController: presented,
            presentingViewController: presenting
        )
    }
}
