//
//  MainViewController.swift
//  OAuthEx
//
//  Created by 김상금 on 2022/04/24.
//

import UIKit
import FirebaseAuth

class MainViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.interactivePopGestureRecognizer?.isEnabled = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.navigationBar.isHidden = true
        
        let email = Auth.auth().currentUser?.email ?? "고객"
        welcomeLabel.text = """
            환영합니다.
            \(email)님
        """
    }
    @IBAction func logoutButtontapped(_ sender: UIButton) {
        let firebaseAuth = Auth.auth()
        self.navigationController?.popToRootViewController(animated: true)
        
//        do {
//            try firebaseAuth.signOut()
//            self.navigationController?.popToRootViewController(animated: true)
//        }catch let signOutError as NSError {
//            print("ERROR: signout \(signOutError.localizedDescription)")
//        }
    }
}
