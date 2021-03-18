//
//  SecondViewController.swift
//  LifeCycleVC
//
//  Created by Sergey on 12.07.2020.
//  Copyright © 2020 Sergey. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    // MARK: - Properties & IBOutlets
    
    // момент инициализации переменных
    var someProperties: String! {
        didSet {
            printMessage()
            print("Property \"var someProperties\" just was initalized")
        }
    }
    
    // момент инициализации аутлетов
    @IBOutlet weak var openThirdVCButton: UIButton! {
        didSet {
            printMessage()
            print("@IBOutlet \"weak var openThirdVCButton\" just was initalized")
        }
    }
    
    
    // MARK: - Controller lifecycle
    
    
    // срабатывает после загрузки View в память. Начало жизненного цикла View
    // для первичной настройки экрана (отображения)
    override func viewDidLoad() {
        super.viewDidLoad()
        
        printMessage()
    }
    
    // срабатывает каждый раз перед появлением View на экране
    // после его вызова становятся доступны геометрические величины View и его SubView
    // используется для обновления данных на экране (н-р в таблице)
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        printMessage()
    }
    
    // срабатывает перед тем, как размер View поменяется под размер экрана
    // (размеры UI элементов известны, но еще не заданы)
    // настройка UI элементов (размеры/расположение) если не используется Auto Layout и Storyboard
    override func viewWillLayoutSubviews() {
        printMessage()
    }
    
    
    // в этот момент срабатывает Auto Layout (между вызовами viewWillLayoutSubviews и viewDidLayoutSubviews)
    
    
    // срабатывает после того, как размер View изменился под размеры экрана
    // (размеры UI элементов заданы)
    // используется для сохранения последнего состояния элементов
    // (н-р лента в Twitter - положение scroll view, на котором остановился)
    override func viewDidLayoutSubviews() {
        printMessage()
    }
    
    // срабатывает каждый раз после появления View на экране
    // последний метод из цикла
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        printMessage()
        separateSeguesMethodCallsInOutput()
        
    }
    
    // срабатывает при каждом повороте экрана
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        
        printMessage()
    }
    
    // срабатывает перед тем, как View закроется
    // тут убирают статус first responder, ставят на паузу выполняемые действия
    // отмена настроек из viewWillAppear
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        printMessage()
    }
    
    // срабатывает после закрытия View
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        printMessage()
    }
    
}


