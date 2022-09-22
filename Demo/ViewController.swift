//
//  ViewController.swift
//  Demo
//
//  Created by Daniel Diaz on 22/09/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func firstButton(_ sender: Any) {
        present(HomeRouter.assembleModule(), animated: true, completion: nil)
    }
    
}

