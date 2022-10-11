//
//  ViewController.swift
//  SimpleUITableView
//
//  Created by Кунгурцев Эдуард Сергеевич on 05.10.2022.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var tableView: UITableView!
	
	let arrayOfString = ["Январь", "Февраль", "Март", "Апрель", "Май", "Июнь", "Июль", "Август", "Сентярбрь", "Октябрь", "Ноябрь", "Декабрь"]
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		tableView.delegate = self
		tableView.dataSource = self
	}


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return arrayOfString.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		// ниже не правильно, нужно делать через опционал и через guard, но ниже помогает быстро отследить ошибку
//		let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! SimpleTableViewCell
		guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as? SimpleTableViewCell else { return UITableViewCell() }
		
		let name = arrayOfString[indexPath.row]
		cell.nameLabel.text = name
		return cell
		
	}
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
	// создаем связь с сторибордом, кодом.
		let storyboard = UIStoryboard(name: "Main", bundle: nil)
		
		let viewController = storyboard.instantiateViewController(withIdentifier: "SimpleUIViewController") as! SimpleUIViewController
		// index и name находятся опциональный в SimpleUIViewController
		viewController.index = "\(indexPath.row + 1)"
		viewController.name = arrayOfString[indexPath.row]
		
		

		navigationController?.pushViewController(viewController, animated: true)
	}
	
}
