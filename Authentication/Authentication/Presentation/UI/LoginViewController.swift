//
//  LoginViewController.swift
//  Authentication
//
//  Created by Yair Carreno on 12/10/19.
//  Copyright © 2019 Yair Carreno. All rights reserved.
//

import UIKit

public class LoginViewController: UIViewController {
    
    var viewModel: LoginViewModel!
    public var coordinator: AuthenticationCoordinator!
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    public init() {
        super.init(nibName: "LoginViewController", bundle: Bundle(for: type(of: self)))
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.verifySession()
    }
    
    public override func viewWillAppear(_ animated: Bool) {
        email.text = ""
        password.text = ""
    }
    
    @IBAction func login(_ sender: Any) {
        viewModel.login(email: email.text!, password: password.text!)
    }
    @IBAction func register(_ sender: Any) {
        coordinator.gotoRegister()
    }
}

extension UIViewController {
    
    public func alert() {
        let alertController = UIAlertController(title: "Autentication", message: "Sorry, please check your credentials", preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(OKAction)
        self.present(alertController, animated: true, completion: nil)
    }
}
