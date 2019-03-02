//
//  calcLogic.swift
//  calculator_app
//
//  Created by Peter Paul on 02/03/19.
//  Copyright © 2019 Emilda pvt. ltd. All rights reserved.
//

import Foundation
class calcLogic{

    class func result(operator1 op1: Double, operand opnd: String, operator2 op2: Double) -> String{
        var reslt = " "
        var val:Double = 0.0
        switch opnd {
        case "+":
            val = op1 + op2
            reslt = String(val)
        case "-":
            val = op1 - op2
            reslt = String(val)
        case "/":
            if op2 == 0{
                reslt = "Can't Divide by 0"
            }else{
                val = op1 / op2
                reslt = String(val)
            }
        case "*":
            val = op1 * op2
            reslt = String(val)
        default:
            reslt = "Wrong Operator. Please Try Again"
        }
        return reslt
    }
}
