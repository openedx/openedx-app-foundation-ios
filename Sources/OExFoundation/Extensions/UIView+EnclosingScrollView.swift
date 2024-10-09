//
//  File.swift
//  OExFoundation
//
//  Created by Ivan Stepanok on 07.10.2024.
//

import UIKit

extension UIView {
    func enclosingScrollView() -> UIScrollView? {
        var next: UIView? = self

        repeat {
            next = next?.superview
            if let scrollview = next as? UIScrollView {
                return scrollview
            }
        } while next != nil

        return nil
    }
}
