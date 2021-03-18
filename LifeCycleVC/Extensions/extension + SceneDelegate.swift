//
//  extension + SceneDelegate.swift
//  LifeCycleVC
//
//  Created by Sergey on 13.07.2020.
//  Copyright © 2020 Sergey. All rights reserved.
//

import UIKit

extension SceneDelegate {
    
    func printMessage(function: String = #function) {
          
          let calendar = Calendar.current
          let date = Date()
          let hour = calendar.component(.hour, from: date)
          let minute = calendar.component(.minute, from: date)
          let second = calendar.component(.second, from: date)
          let nanosecond = calendar.component(.nanosecond, from: date)
         
          print("SceneDelegate: \(function), \(hour):\(minute):\(second) ns \(nanosecond)")
      }
    
}
