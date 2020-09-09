//
//  ProfileViewController.swift
//  Cipher App
//
//  Created by Rishabh Pandey on 8/7/20.
//  Copyright © 2020 Rishabh Pandey. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var Logout: UIButton!
    @IBOutlet weak var TopBar: UILabel!
    
    
    @IBAction func LogoutPressed(_ sender: UIButton) {
            let firebaseAuth = Auth.auth()
        do {
          try firebaseAuth.signOut()
        } catch let signOutError as NSError {
          print ("Error signing out: %@", signOutError)
        }
          self.performSegue(withIdentifier: K.logoutSegue, sender: self)

    }
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
