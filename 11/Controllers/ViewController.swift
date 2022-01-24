//
//  ViewController.swift
//  11
//
//  Created by 中野翔太 on 2022/01/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!

    @IBAction func exit(segue: UIStoryboardSegue) {
        let secondViewcontroller = segue.source as! SecondViewController
        resultLabel.text = secondViewcontroller.text
    }

}
