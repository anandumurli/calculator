//
//  Numbers_operators.swift
//  calculator_app
//
//  Created by Peter Paul on 01/03/19.
//  Copyright © 2019 Emilda pvt. ltd. All rights reserved.
//

import UIKit
@IBDesignable
class Numbers_operators: UITextField {

    override func prepareForInterfaceBuilder() {
        customval()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        customval()
        
    }
    func customval(){
        backgroundColor = #colorLiteral(red: 0.6856177137, green: 0.6856177137, blue: 0.6856177137, alpha: 0.2542913732)
        layer.cornerRadius = 5.0
        textAlignment = .center
        if let p = placeholder{
            let place =
                NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}
