//
//  StartVC.swift
//  WarApp
//
//  Created by megat on 21/03/2019.
//  Copyright © 2019 Megat Syafiq. All rights reserved.
//

import UIKit

class StartVC: UIViewController {

    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBAction func submitButtonDidTapped(_ sender: UIButton) {
        //print ("Hello World")
        
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if nameTextField.text != "" {

            return true
        } else {
            let alert = UIAlertController(title: "Wooops!", message: "Dont forget to fill out your name!", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            return false
        }

    }

    
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewcontroller = segue.destination as! GameVC
        viewcontroller.playerName = nameTextField.text!
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        submitButton.layer.cornerRadius = 23
        submitButton.clipsToBounds = true
        

    }
    
    

}
