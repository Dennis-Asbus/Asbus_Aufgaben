
//
//  Extensions.swift
//  Instagram
//
//  Created by Dennis Pschibul on 04.03.21.
//

import UIKit

extension UIView {
    public var width: CGFloat {
        return frame.size.width
    }
    public var height: CGFloat {
        return frame.size.height
    }
    public var top: CGFloat {
        return frame.origin.y
    }
    public var bottom: CGFloat {
        return frame.origin.y + frame.size.height
    }
    public var left: CGFloat {
        return frame.origin.x
    }
    public var right: CGFloat {
        return frame.origin.x + frame.size.width
    }
}





class StylingUtility {
    static func styleLoginTextField(textField: UITextField, with name: String) {
        textField.backgroundColor = .asbusWhite
        textField.textColor = .asbusGray3
        textField.font = .asbusFontP2
        textField.attributedPlaceholder = NSAttributedString(string: name, attributes: [NSAttributedString.Key.foregroundColor: UIColor.asbusGray2, NSAttributedString.Key.font: UIFont.asbusFontP2])
        textField.returnKeyType = .next
        textField.leftViewMode = .always
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        textField.layer.borderWidth = 1.0
        textField.layer.borderColor = UIColor.asbusGray2.cgColor
        textField.autocapitalizationType = .none
        textField.autocorrectionType = .no
        textField.layer.masksToBounds = true
    }
    
    static func styleBlueButton(button: UIButton, with title: String) {
        button.backgroundColor = .asbusBlue2
        button.setTitleColor(.asbusWhite, for: .normal)
        button.setTitle(title, for: .normal)
        button.titleLabel?.font = .asbusFontS2
        button.contentMode = .center
        button.layer.borderWidth = 0.5
        button.layer.borderColor = UIColor.asbusGray2.cgColor
        button.layer.cornerRadius = 8.0
    }

}



extension CGFloat {
    public static var horizontalSpacing: CGFloat { 20 }
}


extension UIColor {
    open class var asbusGray1: UIColor { UIColor(named: "gray-1") ?? black }
    open class var asbusGray2: UIColor { UIColor(named: "gray-2") ?? black }
    open class var asbusGray3: UIColor { UIColor(named: "gray-3") ?? black }
    open class var asbusGray4: UIColor { UIColor(named: "gray-4") ?? black }
    open class var asbusGray5: UIColor { UIColor(named: "gray-5") ?? black }
    open class var asbusBlue1: UIColor { UIColor(named: "blue-1") ?? black }
    open class var asbusBlue2: UIColor { UIColor(named: "blue-2") ?? black }
    open class var asbusBlue3: UIColor { UIColor(named: "blue-3") ?? black }
    open class var asbusAlertRed: UIColor { UIColor(named: "Alert") ?? black }
    open class var asbusInfoBlue: UIColor { UIColor(named: "info") ?? black }
    open class var asbusPink: UIColor { UIColor(named: "pink") ?? black }
    open class var asbusRatingYellow: UIColor { UIColor(named: "ratingYellow") ?? black }
    open class var asbusSuccessGreen: UIColor { UIColor(named: "success") ?? black }
    open class var asbusWhite: UIColor { UIColor(named: "white") ?? black }
}

extension UIFont {
    open class var asbusFontH1: UIFont { UIFont(name: "Montserrat-Bold", size: 60) ?? UIFont.boldSystemFont(ofSize: 10)}
    open class var asbusFontH2: UIFont { UIFont(name: "Montserrat-Bold", size: 36) ?? UIFont.boldSystemFont(ofSize: 10)}
    open class var asbusFontH3: UIFont { UIFont(name: "Montserrat-Bold", size: 40) ?? UIFont.boldSystemFont(ofSize: 10)}
    open class var asbusFontH4: UIFont { UIFont(name: "Montserrat-Bold", size: 20) ?? UIFont.boldSystemFont(ofSize: 10)}
    open class var asbusFontS1: UIFont { UIFont(name: "Montserrat-Bold", size: 28) ?? UIFont.boldSystemFont(ofSize: 10)}
    open class var asbusFontS2: UIFont { UIFont(name: "Montserrat-Bold", size: 16) ?? UIFont.boldSystemFont(ofSize: 10)}
    open class var asbusFontP1: UIFont { UIFont(name: "Montserrat-Medium", size: 20) ?? UIFont.boldSystemFont(ofSize: 10)}
    open class var asbusFontP2: UIFont { UIFont(name: "Montserrat-Medium", size: 16) ?? UIFont.boldSystemFont(ofSize: 10)}
    open class var asbusFontP25SemiBold: UIFont { UIFont(name: "Montserrat-Medium", size: 14) ?? UIFont.boldSystemFont(ofSize: 10)}
    open class var asbusFontP3: UIFont { UIFont(name: "Montserrat-Regular", size: 12) ?? UIFont.boldSystemFont(ofSize: 10)}
    open class var asbusFontP3Bold: UIFont { UIFont(name: "Montserrat-Bold", size: 12) ?? UIFont.boldSystemFont(ofSize: 10)}
    open class var asbusFontP4: UIFont { UIFont(name: "Montserrat-Bold", size: 8) ?? UIFont.boldSystemFont(ofSize: 10)}
}

