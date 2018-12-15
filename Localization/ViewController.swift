//
//  ViewController.swift
//  Localization
//
//  Created by Kelvin Tan on 12/15/18.
//  Copyright © 2018 Kelvin Tan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func changeLanguage(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            label.text = "hello_world".localizableString("en")
        case 1:
            label.text = "hello_world".localizableString("ko")
        case 2:
            label.text = "hello_world".localizableString("th")
        default:
            break
        }
    }
}

extension String {
    func localizableString(_ name: String) -> String {
        let path = Bundle.main.path(forResource: name, ofType: "lproj")
        let bundle = Bundle(path: path!)
        return NSLocalizedString(self, tableName: nil, bundle: bundle!, value: "", comment: "")
    }
}

