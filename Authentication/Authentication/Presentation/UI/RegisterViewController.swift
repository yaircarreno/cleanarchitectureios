//
//  RegisterViewController.swift
//  Authentication
//
//  Created by Yair Carreno on 12/10/19.
//  Copyright © 2019 Yair Carreno. All rights reserved.
//

import UIKit

public class RegisterViewController: UIViewController {
    
    var viewModel: RegisterViewModel!
    public var coordinator: AuthenticationCoordinator!

    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    public init() {
        super.init(nibName: "RegisterViewController", bundle: Bundle(for: type(of: self)))
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func register(_ sender: Any) {
        viewModel.register(email: email.text!, password: password.text!)
    }
}
