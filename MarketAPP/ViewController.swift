//
//  ViewController.swift
//  MarketAPP
//
//  Created by Ramazan Kula on 28.03.23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var Artikelpreis: UITextField!
    @IBOutlet weak var Endpreis: UILabel!
    
    var Mwst: Double = 1.07
    var Const: Double = 1.5
    var artikel: Double?{
        return Double(Artikelpreis.text!)
    }
    
    @IBAction func MwStbestimmen(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            Mwst = 1.07
         }
        if sender.selectedSegmentIndex == 1 {
            Mwst = 1.19
         }
     }
    
    @IBAction func Berechnen(_ sender: Any) {
        if let artikel = self.artikel{
            let total = artikel * Mwst * Const
            Endpreis.text = String(format:"%.2f" ,total)
        }
    }
}
