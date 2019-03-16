//
//  AlertFunction.swift
//  FlightCalculator
//
//  Created by Gregory Boyd on 11/15/18.
//  Copyright © 2018 Gregory Boyd. All rights reserved.
//

import UIKit

extension UIViewController {
    func emptyAlert(alertTitle: String, alertMessage:String) -> Void {
        let alert = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    func outOfRangeAlert(alertTitle: String, alertMessage:String)-> Void {
        let alert = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Warning", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}
