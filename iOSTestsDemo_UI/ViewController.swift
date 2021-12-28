//
//  ViewController.swift
//  iOSTestsDemo_UI
//
//  Created by Jorge de Carvalho on 28/12/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel! {
        didSet {
            titleLabel.accessibilityIdentifier = "Título"
        }
    }
    var isHidden = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        titleLabel.textColor = .black
        view.backgroundColor = .white
    }


    @IBAction func button(_ sender: Any) {
        isHidden.toggle()
        titleLabel.isHidden = isHidden
    }
}

