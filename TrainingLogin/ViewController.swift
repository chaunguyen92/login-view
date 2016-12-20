//
//  ViewController.swift
//  TrainingLogin
//
//  Created by Quoc Anh Tran on 12/14/16.
//  Copyright © 2016 Anh Tran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var emailtxt: UITextField!
    
    @IBOutlet weak var loginForm: UIView!
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var signInBtn: UIButton!
    @IBOutlet weak var signInTwitterBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginForm.layer.cornerRadius = 15.0
        signInBtn.layer.cornerRadius = 3
        signInTwitterBtn.layer.cornerRadius = 3
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLayoutSubviews(){
        setBottomBorder(for: emailtxt)
        setBottomBorder(for: passwordTxt)
        
        setTextFieldImage(for: emailtxt, with: "email.png", in: CGRect(x: 0, y: 0, width: 42, height: 20))
        setTextFieldImage(for: passwordTxt, with: "lock.png", in: CGRect(x: 0, y: 0, width: 42, height: 20))
        
        signInTwitterBtn.imageEdgeInsets = UIEdgeInsetsMake(10,10,7,15)
        signInBtn.imageEdgeInsets = UIEdgeInsetsMake(20,245,15,20)

    }

    func setBottomBorder(for uiTextField: UITextField){
        let border = CALayer()
        let width = CGFloat(1.0)
        border.borderColor = UIColor.lightGray.cgColor
        border.frame = CGRect(x: 0, y: uiTextField.frame.size.height - width, width:  uiTextField.frame.size.width, height: uiTextField.frame.size.height)
        
        border.borderWidth = width
        uiTextField.layer.addSublayer(border)
        uiTextField.layer.masksToBounds = true
    }
    
    func setTextFieldImage(for textField: UITextField, with image: String, in frame: CGRect){
        textField.leftViewMode = UITextFieldViewMode.always
        let passimageView = UIImageView(frame: frame);
        let passImage = UIImage(named: image);
        passimageView.image = passImage;
        textField.leftView = passimageView;
    }
    
}

