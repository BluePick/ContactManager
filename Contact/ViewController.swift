//
//  ViewController.swift
//  ContactManager
//
//  Created by Ahmad Almasri on 2/11/18.
//  Copyright © 2018 Ahmad Almasri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ContactsManagerFacade.fetchContacts { result in
            switch result {
            case .success(response: let contacts):
                print(contacts)
                break
            case .error(error: let error):
                print(error)
                self.showDialog(forError: error)
                break
            }
        }
        
    }
}

