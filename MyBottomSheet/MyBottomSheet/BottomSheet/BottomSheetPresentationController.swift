//
//  BottomSheetPresentationController.swift
//  MyBottomSheet
//
//  Created by Ilya Cherkasov on 04.06.2023.
//

import UIKit

final class BottomSheetPresentationController: UIPresentationController {

    // MARK: - Internal properties

    override var frameOfPresentedViewInContainerView: CGRect {
        self.calculateFrame()
    }

    override func preferredContentSizeDidChange(
        forChildContentContainer container: UIContentContainer
    ) {
        presentedView?.frame = calculateFrame()
    }

    // MARK: - Private methods

    private func calculateFrame() -> CGRect {
        guard let containerView else {
            return .zero
        }
        let height = presentedViewController.preferredContentSize.height
        return CGRect(
            origin: .init(
                x: containerView.frame.minX,
                y: containerView.frame.maxY - height
            ),
            size: .init(
                width: containerView.frame.width,
                height: height
            )
        )
    }
}
