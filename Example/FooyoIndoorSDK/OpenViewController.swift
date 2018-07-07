//
//  ViewController.swift
//  FooyoIndoorSDK
//
//  Created by pushian on 07/07/2018.
//  Copyright (c) 2018 pushian. All rights reserved.
//

import UIKit
import FooyoIndoorSDK

class OpenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        view.backgroundColor = .blue
        let btn = UIButton.init(frame: CGRect.init(x: UIScreen.main.bounds.width/2 - 100, y: UIScreen.main.bounds.height/2 - 20, width: 200, height: 40))
        btn.setTitle("Navigate Button", for: .normal)
        btn.addTarget(self, action: #selector(btnHandler), for: .touchUpInside)
        btn.titleLabel?.textColor = .white
        btn.backgroundColor = .blue
        view.addSubview(btn)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func btnHandler() {
        let vc = FooyoIndoorSDKViewController()
        let nav = UINavigationController.init(rootViewController: vc)
        self.present(nav, animated: true, completion: nil)
    }

}

