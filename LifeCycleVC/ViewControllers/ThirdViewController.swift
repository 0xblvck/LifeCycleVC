//
//  ThirdViewController.swift
//  LifeCycleVC
//
//  Created by Sergey on 12.07.2020.
//  Copyright © 2020 Sergey. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
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
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        printMessage()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        printMessage()
    }
    
    
    
    
    @IBAction func closeVC(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    // выгружает из памяти
    deinit {
        printMessage()
        separateSeguesMethodCallsInOutput()
        
    }
}

/*
 console output
 
 Third VC: viewWillDisappear(_:), 19:20:52 ns 752712965
 Second VC: viewWillAppear(_:), 19:20:52 ns 752812027
 Second VC: viewDidAppear(_:), 19:20:53 ns 262087941
 --------------------------------------------------------- // wrong call when closes Third VC
 Third VC: viewDidDisappear(_:), 19:20:53 ns 262222051
 Third VC: deinit, 19:20:53 ns 262385964
 ---------------------------------------------------------
 */
