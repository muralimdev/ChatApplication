//
//  ViewController.swift
//  ChatApplication
//
//  Created by MURALI on 23/08/21.
//

import UIKit

class ConversationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Set background color
        let user = User(name: "Murlai")
        print(user)
        view.backgroundColor = .red
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let isLoggedIn = UserDefaults.standard.bool(forKey: "logged_in")
        
        if !isLoggedIn {
            let vc = LoginViewController()
            let nav = UINavigationController(rootViewController: vc)
            nav.modalPresentationStyle = .fullScreen
            present(nav, animated: true, completion: nil)
        }
    }

}
class User {
  let name: String
  
  init(name: String) {
    self.name = name
    print("User \(name) was initialized")
  }

  deinit {
    print("Deallocating user named: \(name)")
  }
}


let user = User(name: "Murlai")
