//
//  SecondVC.swift
//  calculator_app
//
//  Created by Peter Paul on 01/03/19.
//  Copyright © 2019 Emilda pvt. ltd. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {

    @IBOutlet weak var operand1: Numbers_operators!
    
    @IBOutlet weak var operatorx: Numbers_operators!
     @IBOutlet weak var operand2: Numbers_operators!
    override func viewDidLoad() {
        super.viewDidLoad()
        let calBtn = UIButton(frame: CGRect(x : 0, y : 0,  width: view.frame.size.width, height: 50))
        calBtn.backgroundColor = #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1)
        calBtn.setTitle("CALCULATE", for: .normal)
        calBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calBtn.addTarget(self, action: #selector(SecondVC.calc), for: .touchUpInside)
        operand2.inputAccessoryView = calBtn
    }
   
    @objc func calc(){
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
