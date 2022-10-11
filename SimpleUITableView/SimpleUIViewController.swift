//
//  SimpleUIViewController.swift
//  SimpleUITableView
//
//  Created by Кунгурцев Эдуард Сергеевич on 05.10.2022.
//

import UIKit

class SimpleUIViewController: UIViewController {

	@IBOutlet weak var indexLabel: UILabel!
	@IBOutlet weak var nameMonthLabel: UILabel!
	
	var index: String?
	var name: String?
	
	override func viewDidLoad() {
        super.viewDidLoad()
		
		indexLabel.text = index
		nameMonthLabel.text = name

    }
    


}
