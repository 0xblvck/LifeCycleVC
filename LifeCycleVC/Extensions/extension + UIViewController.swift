//
//  extension + UIViewController.swift
//  LifeCycleVC
//
//  Created by Sergey on 12.07.2020.
//  Copyright © 2020 Sergey. All rights reserved.
//

import UIKit

extension UIViewController {
    
    
    func printMessage(function: String = #function) {
        
        let calendar = Calendar.current
        let date = Date()
        let hour = calendar.component(.hour, from: date)
        let minute = calendar.component(.minute, from: date)
        let second = calendar.component(.second, from: date)
        let nanosecond = calendar.component(.nanosecond, from: date)
       
        print("\(title ?? "nil"): \(function), \(hour):\(minute):\(second) ns \(nanosecond)")
    }
    
    func separateSeguesMethodCallsInOutput() {
        print("---------------------------------------------------------")
    }
}

/*
// TODO: - fix separateSeguesMethodCallsInOutput()

 console output
 
 Third VC: viewWillDisappear(_:), 19:20:52 ns 752712965
 Second VC: viewWillAppear(_:), 19:20:52 ns 752812027
 Second VC: viewDidAppear(_:), 19:20:53 ns 262087941
 --------------------------------------------------------- // wrong call when closes Third VC
 Third VC: viewDidDisappear(_:), 19:20:53 ns 262222051
 Third VC: deinit, 19:20:53 ns 262385964
 ---------------------------------------------------------
 */

