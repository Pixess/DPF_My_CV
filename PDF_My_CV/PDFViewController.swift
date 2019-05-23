//
//  PDFViewController.swift
//  PDF_My_CV
//
//  Created by Artem on 5/23/19.
//  Copyright © 2019 Home Developer. All rights reserved.
//

import UIKit
import WebKit

class PDFViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet var webView: WKWebView!
    
    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView.navigationDelegate = self
        if let fileName = title {
            openPDFFile(fileName)
        }

        // Do any additional setup after loading the view.
    }
    
    private func openPDFFile(_ fileName: String){
        if let fileName = Bundle.main.url(forResource : fileName , withExtension : "pdf"){
            let request = URLRequest(url:  fileName)
            webView.load(request)
        }
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activityIndicator.stopAnimating()
    }
    
}
