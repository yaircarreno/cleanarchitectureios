//
//  DashboardViewController.swift
//  Category
//
//  Created by Yair Carreno on 12/10/19.
//  Copyright © 2019 Yair Carreno. All rights reserved.
//

import UIKit

public class DashboardViewController: UIViewController {
    
    var viewModel: DashboardView!

    public init() {
        super.init(nibName: "DashboardViewController", bundle: Bundle(for: type(of: self)))
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func signout(_ sender: Any) {
        viewModel.signout()
    }
}
