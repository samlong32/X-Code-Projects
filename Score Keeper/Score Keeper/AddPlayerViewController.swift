//
//  AddPlayerViewController.swift
//  Score Keeper
//
//  Created by sam long on 11/12/23.
//

import UIKit

class AddPlayerViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var scoreTextField: UITextField!
    
    var completionHandler: ((String, Int) -> Void)?
    
    @IBAction func saveButtonTapped(_ sender: UIButton) {
        guard let name = nameTextField.text,
              let scoreText = scoreTextField.text,
              let score = Double(scoreText) else {
            return
        }
        completionHandler?(name, Int(score))
        dismiss(animated: true, completion: nil)
    }
}

