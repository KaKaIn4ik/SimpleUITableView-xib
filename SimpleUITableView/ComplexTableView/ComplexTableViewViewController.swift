//
//  ComplexTableViewViewController.swift
//  SimpleUITableView
//
//  Created by Кунгурцев Эдуард Сергеевич on 06.10.2022.
//

import UIKit

class ComplexTableViewViewController: UIViewController {

	@IBOutlet weak var tableView: UITableView!
	
	
	var arrayOfPost: [Post] = [Post(avatarImageName: "1213" , postImageName: "123123" , userName: "1213", viewsCount: 21, description: "1213", countOfComments: 33, postedAt: "1213"), Post(avatarImageName: "1213" , postImageName: "1213", userName: "1213", viewsCount: 21, description: "1213", countOfComments: 34, postedAt: "1213"), Post(avatarImageName: "1213" , postImageName: "1213", userName: "1213", viewsCount: 21, description: "1213", countOfComments: 33, postedAt: "1213") ]
	override func viewDidLoad() {
        super.viewDidLoad()

		let nib = UINib(nibName: "PersonTableViewCell", bundle: nil)
		self.tableView.register(nib, forCellReuseIdentifier: "PersonTableViewCell")
    }
}

extension ComplexTableViewViewController: UITableViewDelegate, UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		arrayOfPost.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		 
		guard let cell = tableView.dequeueReusableCell(withIdentifier: "PersonTableViewCell") as? PersonTableViewCell else { return UITableViewCell()}
		cell.configure(with: arrayOfPost[indexPath.row])
		return cell
		
	}
	
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//		return 500
		// можно сделать авто определение высоты
		return UITableView.automaticDimension
	}
	
	
}
