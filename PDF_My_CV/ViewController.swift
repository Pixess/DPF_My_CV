//
//  ViewController.swift
//  PDF_My_CV
//
//  Created by Artem on 5/23/19.
//  Copyright © 2019 Home Developer. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

   private var pdf = ["PDF_1"]
   private var fileName = ""
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pdf.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        Cell.textLabel?.text = pdf[indexPath.row]
        return Cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        fileName = pdf[indexPath.row]
        performSegue(withIdentifier: "ShowPDF", sender: self)
        
    }
    override func prepare(for segue : UIStoryboardSegue , sender : Any?){
        let pdfVC = segue.destination as! PDFViewController
        pdfVC.title = fileName
    }
    
}

