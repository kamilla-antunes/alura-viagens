//
//  UIColor+Extension.swift
//  Alura Viagens
//
//  Created by Kamilla Mylena Teixeira Antunes on 23/03/23.
//

import UIKit

extension UIColor {
    static func rgba(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: alpha)
    }
}
