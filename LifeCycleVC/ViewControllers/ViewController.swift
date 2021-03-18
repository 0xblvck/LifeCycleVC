//
//  ViewController.swift
//  LifeCycleVC
//
//  Created by Sergey on 12.07.2020.
//  Copyright © 2020 Sergey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Controller lifecycle
    
    override func viewDidLoad() {
            super.viewDidLoad()
            printMessage()
        }
        
        override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            printMessage()
        }
        
        override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
            printMessage()
            separateSeguesMethodCallsInOutput()
        }
    
        override func viewWillDisappear(_ animated: Bool) {
            super.viewWillDisappear(animated)
            printMessage()
        }
        
        override func viewDidDisappear(_ animated: Bool) {
            super.viewDidDisappear(animated)
            printMessage()
        }

    
    // MARK: - Navigation
    
    // для проверки момента инициализации свойства someProperties в SecondVC
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GoToSecondVC" {
            let dvc = segue.destination as! SecondViewController
            dvc.someProperties = "someProperties"
        }
    }

}

