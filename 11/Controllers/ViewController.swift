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
        // 汎用性がある
        switch segue.identifier {
        case "toNext": guard let secondViewController = segue.source as? SecondViewController else { return }
            resultLabel.text = secondViewController.prefecture
        default:
            break
        }
    }

}
