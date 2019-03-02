//
//  SecondVC.swift
//  calculator_app
//
//  Created by Peter Paul on 01/03/19.
//  Copyright © 2019 Emilda pvt. ltd. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {

  
    @IBOutlet weak var resultLbl: UILabel!
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
        resultLbl.text = "Answer"
        operand1.placeholder = "operator one"
        operand2.placeholder = "operator two"
        operatorx.placeholder = "operator"
    }
    @IBAction func clearPressed(_ sender: Any) {
        resultLbl.text = "Answer"
        operand1.text = ""
        operand2.text = ""
        operatorx.text = ""
    }
    @objc func calc(){
       // resultLbl.text = "reached in"
        if let op1Val = operand1.text, let op2Val = operand2.text, let opnd = operatorx.text{
            //resultLbl.text = "reached here"
            if let op1 = Double(op1Val), let op2 = Double(op2Val) {
                    view.endEditing(true)
                let st = calcLogic.result(operator1: op1, operand: opnd, operator2: op2)
                    resultLbl.text = st
            }else{
                resultLbl.text = "error"
            }
            
        }
    }

    /*
     code
     {
     if let op1 = Double(op1Val), let op2 = Double(op2Val) {
     view.endEditing(true)
     resultLbl.text = "reached here2"
     }
     }
     \(calcLogic.result(operator1: op1, operand: opnd, operator2: op2))
     
     if let op1 = Double(op1Val), let op2 = Double(op2Val) {
     view.endEditing(true)
     resultLbl.text = "\(calcLogic.result(operator1: op1, operand: opnd, operator2: op2))"
     }
     
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
