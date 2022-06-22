//
//  ViewController.swift
//  HelloWorld
//
//  Created by Bách Nguyễn Viết on 22/06/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func showMessage(sender: UIButton) {
        let emojiDic: [String:String] = ["🤮" : "Vomit",
                                                 "😶‍🌫️" : "Into the fog",
                                                 "😈" : "Satan",
                                                 "💩" : "Oh Shit!"
                                                 ]
        let selectedBtn = sender
        
        if let wordToLookUp = selectedBtn.titleLabel?.text{
            let alertController = UIAlertController(title: "Welcome too my First App", message: emojiDic[wordToLookUp], preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            present(alertController, animated: true, completion: nil)
        }
        
    }
    


}

