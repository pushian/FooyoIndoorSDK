//
//  FooyoIndoorSDKViewController.swift
//  DZNWebViewController
//
//  Created by Yangfan Liu on 7/7/18.
//

import UIKit
//import DZNWebViewController
import WebKit

public class FooyoIndoorSDKViewController: UIViewController {
    var webView: WKWebView!
//    var load = uispin
//    var refresh = UIRefreshControl.init()
    
    override public func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        let wc = DZNWebViewController.init()
        self.navigationItem.title = "FooyoIndoorSDK"
        let closeBtn = UIBarButtonItem.init(title: "Close", style: .plain, target: self, action: #selector(closeHandler))
        self.navigationItem.rightBarButtonItem = closeBtn
        webView = WKWebView(frame: view.bounds, configuration: WKWebViewConfiguration())
        webView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.view.addSubview(webView)
        self.webView.allowsBackForwardNavigationGestures = true
        let myURL = URL(string: "https://pro.brtbeacon.com.cn/market/CRH/WuHan_station/nav")
        if let unwrappedURL = myURL {
            let request = URLRequest.init(url: unwrappedURL)
            let session = URLSession.shared
            let task = session.dataTask(with: request) { (data, response, error) in
                if error == nil {
                    DispatchQueue.main.async {
                        self.webView.load(request)
                    }
                } else {
                    debugPrint("Error: \(error)")
                }
            }
            task.resume()
        }
    }

    override public func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    @objc func closeHandler() {
        self.dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
