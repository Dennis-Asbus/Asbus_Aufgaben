//
//  LoginViewController.swift
//  AsbusAufgabe01
//
//  Created by Dennis Pschibul on 10.01.22.
//

import UIKit


class LoginViewController: UIViewController {
    
    
    //  MARK: assets
    private let headerView: UIView = {
        let view = UIView()
        view.backgroundColor = .asbusGray5
        view.layer.masksToBounds = true
        return view
    }()
    
    private let welcomeLabel: UILabel = {
        let label = UILabel()
        label.text = "Willkommen bei ASBUS"
        label.textColor = .asbusWhite
        label.font = UIFont.asbusFontH4
        label.textAlignment = .center
        return label
    }()
    
    private let asbusImage: UIImageView = {
        let asbusImage = UIImageView()
        asbusImage.image = UIImage(named: "ASBUS_Logo_white")
        asbusImage.contentMode = .scaleAspectFit
        return asbusImage
    }()
    
    private let mailUsernameTextField: UITextField = {
        let textField = UITextField()
        StylingUtility.styleLoginTextField(textField: textField, with: "Email/Nutzername")
        textField.keyboardType = .alphabet
        return textField
    }()
    
    private let passwordTextField: UITextField = {
        let textField = UITextField()
        StylingUtility.styleLoginTextField(textField: textField, with: "Passwort")
        textField.keyboardType = .default
        textField.isSecureTextEntry = true
        return textField
    }()
    
    private let registerLabel: UILabel = {
        let label = UILabel()
        label.text = "Noch kein Mitglied?"
        label.textColor = .asbusGray4
        label.font = .asbusFontP25SemiBold
        return label
    }()
    
    private let forgotPasswordButton: UIButton = {
        let button = UIButton()
        let attributedString = NSMutableAttributedString.init(string: "Passwort vergessen")
        attributedString.addAttribute(NSAttributedString.Key.underlineStyle, value: 1, range: NSRange.init(location: 0, length: attributedString.length))
        button.setAttributedTitle(attributedString, for: .normal)
        button.titleLabel?.font = .asbusFontP25SemiBold
        button.setTitleColor(.asbusGray5, for: .normal)
        button.backgroundColor = .asbusGray1
        button.contentVerticalAlignment = .center
        button.contentHorizontalAlignment = .right
        return button
    }()
    private let loginButton: UIButton = {
        let button = UIButton()
        StylingUtility.styleBlueButton(button: button, with: "Login")
        return button
    }()
    private let registerButton: UIButton = {
        let button = UIButton()
        let attributedString = NSMutableAttributedString.init(string: "Jetzt registrieren")
        attributedString.addAttribute(NSAttributedString.Key.underlineStyle, value: 1, range: NSRange.init(location: 0, length: attributedString.length))
        button.setAttributedTitle(attributedString, for: .normal)
        button.titleLabel?.font = .asbusFontP25SemiBold
        button.setTitleColor(.asbusBlue2, for: .normal)
        button.backgroundColor = nil
        button.contentVerticalAlignment = .center
        button.contentHorizontalAlignment = .right
        return button
    }()
    
    private let errorLabel: UILabel = {
        let label = UILabel()
        label.textColor = .asbusAlertRed
        label.font = .asbusFontP2
        label.numberOfLines = 0
        label.isHidden = true
        return label
    }()
    // MARK: viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        // delegate
        
        
        // adding Subviews
        view.backgroundColor = .asbusGray1
        view.addSubview(headerView)
        view.addSubview(mailUsernameTextField)
        view.addSubview(passwordTextField)
        view.addSubview(welcomeLabel)
        view.addSubview(registerLabel)
        view.addSubview(registerButton)
        view.addSubview(loginButton)
        view.addSubview(forgotPasswordButton)
        view.addSubview(asbusImage)
        view.addSubview(errorLabel)
        
        
        // adding targets
        registerButton.addTarget(self, action: #selector(tappedRegisterButton), for: .touchUpInside)
        loginButton.addTarget(self, action: #selector(tappedLoginButton), for: .touchUpInside)
        forgotPasswordButton.addTarget(self, action: #selector(tappedForgotPasswordButton), for: .touchUpInside)
        
    }


    // MARK: viewDidLayoutSubviews
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        headerView.frame = CGRect(x: 0, y: 0, width: view.width, height: view.height/5).integral
        let welcomeHeight: CGFloat = headerView.height/3
        welcomeLabel.frame = CGRect(x: .horizontalSpacing, y: headerView.bottom-welcomeHeight, width: view.frame.width-40, height: welcomeHeight)
        let asbusWidth: CGFloat = view.width/6
        asbusImage.frame = CGRect(x: (view.width-asbusWidth)/2, y: welcomeLabel.top-asbusWidth, width: asbusWidth, height: asbusWidth)
        let textHeight: CGFloat = view.width/7.5
        mailUsernameTextField.frame = CGRect(x: .horizontalSpacing, y: headerView.bottom + 40, width: view.width-(.horizontalSpacing*2), height: textHeight)
        passwordTextField.frame = CGRect(x: .horizontalSpacing, y: mailUsernameTextField.bottom + 20, width: view.width-(.horizontalSpacing*2), height: textHeight)
        let buttonWidth: CGFloat = (view.width - CGFloat.horizontalSpacing*2)/2
        forgotPasswordButton.frame = CGRect(x: passwordTextField.right - buttonWidth, y: passwordTextField.bottom + 20, width: buttonWidth, height: 17)
        loginButton.frame = CGRect(x: .horizontalSpacing, y: forgotPasswordButton.bottom + 20, width: view.width-(.horizontalSpacing*2), height: 50)
        registerButton.frame = CGRect(x: forgotPasswordButton.left, y: loginButton.bottom, width: buttonWidth, height: 50)
        registerLabel.frame = CGRect(x: .horizontalSpacing, y: loginButton.bottom, width: buttonWidth, height: textHeight)
        errorLabel.frame = CGRect(x: .horizontalSpacing, y: registerLabel.bottom, width: view.width - .horizontalSpacing*2, height: textHeight*2)
    }
    
    func showError(erorr: String) {
        errorLabel.text = erorr
        errorLabel.isHidden = false
    }
    
    
    
    // MARK: obj-c func
    
    @objc func tappedRegisterButton() {
        // TODO: present RegisterViewController
        
    }
    
    @objc func tappedLoginButton() {
        // TODO: try to login with amplify
        
    }
    
    @objc func tappedForgotPasswordButton() {
        // TODO: Handle forgot password
    }
}


