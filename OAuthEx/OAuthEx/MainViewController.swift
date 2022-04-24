//
//  MainViewController.swift
//  OAuthEx
//
//  Created by 김상금 on 2022/04/24.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.interactivePopGestureRecognizer?.isEnabled = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.navigationBar.isHidden = true
        
    }
    @IBAction func logoutButtontapped(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
    }
}
