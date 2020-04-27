//
//  UIView+Autolayout.swift
//  Facebook
//
//  Created by Zouhair Sassi on 4/25/20.
//  Copyright © 2020 Zouhair Sassi. All rights reserved.
//

import UIKit

extension UIView {

    @discardableResult
    public func pinLeft(to view: UIView, _ constant: CGFloat = 0, priority: UILayoutPriority = .required) -> Self {
        NSLayoutConstraint(item: self, attribute: .left, relatedBy: .equal, toItem: view, attribute: .right, multiplier: 1, constant: constant).activate(with: priority)
        return self
    }

    @discardableResult
    public func pinLeft(inequallyTo view: UIView, _ constant: CGFloat = 0, priority: UILayoutPriority = .required) -> Self {
        NSLayoutConstraint(item: self, attribute: .left, relatedBy: .greaterThanOrEqual, toItem: view, attribute: .right, multiplier: 1, constant: constant).activate(with: priority)
        return self
    }

    @discardableResult
    public func pinLeftToSuperview(_ constant: CGFloat = 0, priority: UILayoutPriority = .required) -> Self {
        guard let view = superview else { fatalError("view \(self) doesn't have superview") }
        NSLayoutConstraint(item: self, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1, constant: constant).activate(with: priority)
        return self
    }

    @discardableResult
    public func pinLeftInequallyToSuperview(_ constant: CGFloat = 0, priority: UILayoutPriority = .required) -> Self {
        guard let view = superview else { fatalError("view \(self) doesn't have superview") }
        NSLayoutConstraint(item: self, attribute: .left, relatedBy: .greaterThanOrEqual, toItem: view, attribute: .left, multiplier: 1, constant: constant).activate(with: priority)
        return self
    }

    @discardableResult
    public func pinRight(to view: UIView, _ constant: CGFloat = 0, priority: UILayoutPriority = .required) -> Self {
        NSLayoutConstraint(item: self, attribute: .right, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1, constant: -constant).activate(with: priority)
        return self
    }

    @discardableResult
    public func pinRight(inequallyTo view: UIView, _ constant: CGFloat = 0, priority: UILayoutPriority = .required) -> Self {
        NSLayoutConstraint(item: self, attribute: .right, relatedBy: .lessThanOrEqual, toItem: view, attribute: .left, multiplier: 1, constant: -constant).activate(with: priority)
        return self
    }

    @discardableResult
    public func pinRightToSuperview(_ constant: CGFloat = 0, priority: UILayoutPriority = .required) -> Self {
        guard let view = superview else { fatalError("view \(self) doesn't have superview") }
        NSLayoutConstraint(item: self, attribute: .right, relatedBy: .equal, toItem: view, attribute: .right, multiplier: 1, constant: -constant).activate(with: priority)
        return self
    }

    @discardableResult
    public func pinRightInequallyToSuperview(_ constant: CGFloat = 0, priority: UILayoutPriority = .required) -> Self {
        guard let view = superview else { fatalError("view \(self) doesn't have superview") }
        NSLayoutConstraint(item: self, attribute: .right, relatedBy: .lessThanOrEqual, toItem: view, attribute: .right, multiplier: 1, constant: -constant).activate(with: priority)
        return self
    }

    @discardableResult
    public func pinTop(to view: UIView, _ constant: CGFloat = 0, priority: UILayoutPriority = .required) -> Self {
        NSLayoutConstraint(item: self, attribute: .top, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1, constant: constant).activate(with: priority)
        return self
    }

    @discardableResult
    public func pinTop(inequallyTo view: UIView, _ constant: CGFloat = 0, priority: UILayoutPriority = .required) -> Self {
        NSLayoutConstraint(item: self, attribute: .top, relatedBy: .greaterThanOrEqual, toItem: view, attribute: .bottom, multiplier: 1, constant: constant).activate(with: priority)
        return self
    }

    @discardableResult
    public func pinTopToSuperview(_ constant: CGFloat = 0, priority: UILayoutPriority = .required) -> Self {
        guard let view = superview else { fatalError("view \(self) doesn't have superview") }
        NSLayoutConstraint(item: self, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: constant).activate(with: priority)
        return self
    }

    @discardableResult
    public func pinTopInequallyToSuperview(_ constant: CGFloat = 0, priority: UILayoutPriority = .required) -> Self {
        guard let view = superview else { fatalError("view \(self) doesn't have superview") }
        NSLayoutConstraint(item: self, attribute: .top, relatedBy: .greaterThanOrEqual, toItem: view, attribute: .top, multiplier: 1, constant: constant).activate(with: priority)
        return self
    }

    @discardableResult
    public func pinBottom(to view: UIView, _ constant: CGFloat = 0, priority: UILayoutPriority = .required) -> Self {
        NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: -constant).activate(with: priority)
        return self
    }

    @discardableResult
    public func pinBottom(inequallyTo view: UIView, _ constant: CGFloat = 0, priority: UILayoutPriority = .required) -> Self {
        NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .lessThanOrEqual, toItem: view, attribute: .top, multiplier: 1, constant: -constant).activate(with: priority)
        return self
    }

    @discardableResult
    public func pinBottomToSuperview(_ constant: CGFloat = 0, priority: UILayoutPriority = .required) -> Self {
        guard let view = superview else { fatalError("view \(self) doesn't have superview") }
        NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1, constant: -constant).activate(with: priority)
        return self
    }

    @discardableResult
    public func pinBottomInequallyToSuperview(_ constant: CGFloat = 0, priority: UILayoutPriority = .required) -> Self {
        guard let view = superview else { fatalError("view \(self) doesn't have superview") }
        NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .lessThanOrEqual, toItem: view, attribute: .bottom, multiplier: 1, constant: -constant).activate(with: priority)
        return self
    }

    @discardableResult
    public func centerHorizontally(with view: UIView, _ constant: CGFloat = 0, priority: UILayoutPriority = .required) -> Self {
        NSLayoutConstraint(item: self, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: constant).activate(with: priority)
        return self
    }

    @discardableResult
    public func centerHorizontally(_ constant: CGFloat = 0, priority: UILayoutPriority = .required) -> Self {
        guard let view = superview else { fatalError("view \(self) doesn't have superview") }
        NSLayoutConstraint(item: self, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: constant).activate(with: priority)
        return self
    }

    @discardableResult
    public func centerVertically(with view: UIView, _ constant: CGFloat = 0, priority: UILayoutPriority = .required) -> Self {
        NSLayoutConstraint(item: self, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: constant).activate(with: priority)
        return self
    }

    @discardableResult
    public func centerVertically(_ constant: CGFloat = 0, priority: UILayoutPriority = .required) -> Self {
        guard let view = superview else { fatalError("view \(self) doesn't have superview") }
        NSLayoutConstraint(item: self, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: constant).activate(with: priority)
        return self
    }

    public func centerVertically(_ constant: CGFloat = 0, priority: UILayoutPriority = .required) -> NSLayoutConstraint {
        guard let view = superview else { fatalError("view \(self) doesn't have superview") }
        return NSLayoutConstraint(item: self, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: constant).activate(with: priority)
    }

    @discardableResult
    public func fillInContainer(with insets: UIEdgeInsets, priority: UILayoutPriority = .required) -> Self {
        return pinLeftToSuperview(insets.left, priority: priority)
            .pinRightToSuperview(insets.right, priority: priority)
            .pinTopToSuperview(insets.top, priority: priority)
            .pinBottomToSuperview(insets.bottom, priority: priority)
    }

    @discardableResult
    public func fillInContainer(_ constant: CGFloat = 0, priority: UILayoutPriority = .required) -> Self {
        return fillInContainer(with: UIEdgeInsets(top: constant, left: constant, bottom: constant, right: constant), priority: priority)
    }

    @discardableResult
    public func setWidth(_ constant: CGFloat, priority: UILayoutPriority = .required) -> Self {
        NSLayoutConstraint(item: self, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1, constant: constant).activate(with: priority)
        return self
    }

    @discardableResult
    public func setWidth(relativeTo view: UIView, multiplier: CGFloat, constant: CGFloat = 0, priority: UILayoutPriority = .required) -> Self {
        NSLayoutConstraint(item: self, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: multiplier, constant: constant).activate(with: priority)
        return self
    }

    @discardableResult
    public func setHeight(_ constant: CGFloat, priority: UILayoutPriority = .required) -> Self {
        NSLayoutConstraint(item: self, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: constant).activate(with: priority)
        return self
    }

    @discardableResult
    public func setHeight(relativeTo view: UIView, multiplier: CGFloat, constant: CGFloat = 0, priority: UILayoutPriority = .required) -> Self {
        NSLayoutConstraint(item: self, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: multiplier, constant: constant).activate(with: priority)
        return self
    }

    // MARK: - Align

    @discardableResult
    public func alignLeft(with view: UIView, _ constant: CGFloat = 0, priority: UILayoutPriority = .required) -> Self {
        NSLayoutConstraint(item: self, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1, constant: constant).activate(with: priority)
        return self
    }

    @discardableResult
    public func alignLeft(greaterThan view: UIView, _ constant: CGFloat = 0, priority: UILayoutPriority = .required) -> Self {
        NSLayoutConstraint(item: self, attribute: .left, relatedBy: .greaterThanOrEqual, toItem: view, attribute: .left, multiplier: 1, constant: constant).activate(with: priority)
        return self
    }

    @discardableResult
    public func alignLeft(lessThan view: UIView, _ constant: CGFloat = 0, priority: UILayoutPriority = .required) -> Self {
        NSLayoutConstraint(item: self, attribute: .left, relatedBy: .lessThanOrEqual, toItem: view, attribute: .left, multiplier: 1, constant: constant).activate(with: priority)
        return self
    }

    @discardableResult
    public func alignRight(with view: UIView, _ constant: CGFloat = 0, priority: UILayoutPriority = .required) -> Self {
        NSLayoutConstraint(item: self, attribute: .right, relatedBy: .equal, toItem: view, attribute: .right, multiplier: 1, constant: constant).activate(with: priority)
        return self
    }

    @discardableResult
    public func alignRight(greaterThan view: UIView, _ constant: CGFloat = 0, priority: UILayoutPriority = .required) -> Self {
        NSLayoutConstraint(item: self, attribute: .right, relatedBy: .greaterThanOrEqual, toItem: view, attribute: .right, multiplier: 1, constant: constant).activate(with: priority)
        return self
    }

    @discardableResult
    public func alignRight(lessThan view: UIView, _ constant: CGFloat = 0, priority: UILayoutPriority = .required) -> Self {
        NSLayoutConstraint(item: self, attribute: .right, relatedBy: .lessThanOrEqual, toItem: view, attribute: .right, multiplier: 1, constant: constant).activate(with: priority)
        return self
    }

    @discardableResult
    public func alignTop(with view: UIView, _ constant: CGFloat = 0, priority: UILayoutPriority = .required) -> Self {
        NSLayoutConstraint(item: self, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: constant).activate(with: priority)
        return self
    }

    @discardableResult
    public func alignTop(greaterThan view: UIView, _ constant: CGFloat = 0, priority: UILayoutPriority = .required) -> Self {
        NSLayoutConstraint(item: self, attribute: .top, relatedBy: .greaterThanOrEqual, toItem: view, attribute: .top, multiplier: 1, constant: constant).activate(with: priority)
        return self
    }

    @discardableResult
    public func alignTop(lessThan view: UIView, _ constant: CGFloat = 0, priority: UILayoutPriority = .required) -> Self {
        NSLayoutConstraint(item: self, attribute: .top, relatedBy: .lessThanOrEqual, toItem: view, attribute: .top, multiplier: 1, constant: constant).activate(with: priority)
        return self
    }

    @discardableResult
    public func alignBottom(with view: UIView, _ constant: CGFloat = 0, priority: UILayoutPriority = .required) -> Self {
        NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1, constant: constant).activate(with: priority)
        return self
    }

    @discardableResult
    public func alignBottom(greaterThan view: UIView, _ constant: CGFloat = 0, priority: UILayoutPriority = .required) -> Self {
        NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .greaterThanOrEqual, toItem: view, attribute: .bottom, multiplier: 1, constant: constant).activate(with: priority)
        return self
    }

    @discardableResult
    public func alignBottom(lessThan view: UIView, _ constant: CGFloat = 0, priority: UILayoutPriority = .required) -> Self {
        NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .lessThanOrEqual, toItem: view, attribute: .bottom, multiplier: 1, constant: constant).activate(with: priority)
        return self
    }
}

private extension NSLayoutConstraint {
    @discardableResult
    func activate(with priority: UILayoutPriority) -> Self {
        self.priority = priority
        isActive = true
        return self
    }
}

extension UIView {
    public func asView() {}
}

extension NSLayoutConstraint {
    public func asConstraint() {}
}

