//
//  ViewController.swift
//  AsbusAufgabe01
//
//  Created by Dennis Pschibul on 10.01.22.
//

import UIKit

class AsbusCreditViewController: UIViewController {
    
    //MARK: Assets
    private let codeField: UITextField = {
        let field = UITextField()
        field.placeholder = "AB-01-31-DE-CI-KH"
        field.textAlignment = .center
        field.backgroundColor = .white
        field.font = .asbusFontS2
        field.textColor = .asbusGray5
        return field
    }()
    
    private let redeemCodeButton: UIButton = {
        let button = UIButton()
        StylingUtility.styleBlueButton(button: button, with: "Gutschein einlösen")
        return button
    }()
    
    private let divider: UIView = {
        let dividerView = UIView()
        dividerView.backgroundColor = .asbusGray5
        return dividerView
    }()
    
    private let headerLabel: UILabel = {
        let label = UILabel()
        label.text = "ASBUS Guthaben"
        label.textColor = .asbusGray5
        label.font = .asbusFontH4
        label.textAlignment = .left
        return label
    }()
    
    private let creditLabel: UILabel = {
        let label = UILabel()
        label.text = "0,00€"
        label.textColor = .asbusGray5
        label.font = .asbusFontH4
        label.textAlignment = .center
        return label
    }()
    
    private let redeemLabel: UILabel = {
        let label = UILabel()
        label.text = "Löse dein Guthaben von deinem Gutschein ein"
        label.numberOfLines = 2
        label.textColor = .asbusGray5
        label.font = .asbusFontS2
        label.textAlignment = .left
        return label
    }()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "Gib deinen Gutscheincode ein und der Betrag wird zu deinem Guthaben hinzugefügt"
        label.textColor = .asbusGray5
        label.font = .asbusFontP2
        label.textAlignment = .left
        label.numberOfLines = 3
        return label
    }()
    
    private let restrictionLabel: UILabel = {
        let label = UILabel()
        label.text = "Es können nur Geschenkgutscheine eingelöst werden"
        label.textColor = .asbusGray5
        label.font = .asbusFontP2
        label.textAlignment = .left
        label.numberOfLines = 2
        return label
    }()
    
    private let restriction2Label: UILabel = {
        let label = UILabel()
        label.text = "Andere Rabattaktionen können nur im Bestellprozess eingelöst werden"
        label.textColor = .asbusGray5
        label.font = .asbusFontP3
        label.textAlignment = .left
        label.numberOfLines = 2
        return label
    }()
    
    //MARK: viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Hide Navigation bar in view
        navigationController?.navigationBar.isHidden = true
        
        // add subviews
        addSubviews()
        
        //Style View
        view.backgroundColor = .asbusGray1
        
        //Add Targets
        redeemCodeButton.addTarget(self, action: #selector(tappedRedeemCodeButton), for: .touchUpInside)
    }
    
    //MARK: viewDidLayoutSubviews
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        //general variables
        let safeTop = view.safeAreaInsets.top
        let textLabelWidth = view.width - 2 * .horizontalSpacing
        let whiteSpace = view.height / 15
        let textSpacing = view.height / 20
        let buttonSpacing = view.height / 40
        //headerlabel
        headerLabel.frame = CGRect(x: .horizontalSpacing, y: safeTop + textSpacing, width: textLabelWidth, height: headerLabel.font.capHeight)
        
        //creditLabel
        creditLabel.frame = CGRect(x: .horizontalSpacing, y: headerLabel.bottom + textSpacing, width: textLabelWidth, height: creditLabel.font.capHeight * 2)
        
        //divider
        divider.frame = CGRect(x: .horizontalSpacing, y: creditLabel.bottom, width: textLabelWidth, height: 2)
        
        //redeemLabel
        redeemLabel.frame = CGRect(x: .horizontalSpacing, y: divider.bottom + textSpacing, width: textLabelWidth, height: redeemLabel.font.lineHeight * 2)
        
        //descriptionLabel
        descriptionLabel.frame = CGRect(x: .horizontalSpacing, y: redeemLabel.bottom, width: textLabelWidth, height: descriptionLabel.font.lineHeight * 3)
        
        //codeField
        codeField.frame = CGRect(x: .horizontalSpacing, y: descriptionLabel.bottom + whiteSpace, width: textLabelWidth, height: codeField.minimumFontSize * 3)
        
        //redeemCodeButton
        redeemCodeButton.frame = CGRect(x: .horizontalSpacing, y: codeField.bottom + buttonSpacing, width: textLabelWidth, height: view.height / 20)
        
        //restrictionLabel
        restrictionLabel.frame = CGRect(x: .horizontalSpacing, y: redeemCodeButton.bottom, width: textLabelWidth, height: restrictionLabel.font.lineHeight * 2)
        
        //restriction2Label
        restriction2Label.frame = CGRect(x: .horizontalSpacing, y: restrictionLabel.bottom, width: textLabelWidth, height: restriction2Label.font.lineHeight * 2)
    }
    
    private func addSubviews() {
        view.addSubview(divider)
        view.addSubview(codeField)
        view.addSubview(redeemCodeButton)
        view.addSubview(creditLabel)
        view.addSubview(headerLabel)
        view.addSubview(redeemLabel)
        view.addSubview(descriptionLabel)
        view.addSubview(restrictionLabel)
        view.addSubview(restriction2Label)
    }
    
    @objc func tappedRedeemCodeButton() {
        // TODO: Handle Redeem Code
    }


}

