//
//  PersonTableViewCell.swift
//  SimpleUITableView
//
//  Created by Кунгурцев Эдуард Сергеевич on 05.10.2022.
//

import UIKit

class PersonTableViewCell: UITableViewCell {

	@IBOutlet weak var avatarImageView: UIImageView!
	@IBOutlet weak var postImageView: UIImageView!
	@IBOutlet weak var userNameLabel: UILabel!
	@IBOutlet weak var viewCountLabel: UILabel!
	@IBOutlet weak var descriptionLabel: UILabel!
	@IBOutlet weak var countOfCommentsLabel: UILabel!
	@IBOutlet weak var postedArLabel: UILabel!
	

	func configure(with post: Post ) {
		userNameLabel.text = post.userName
		viewCountLabel.text = "\(post.viewsCount) views"
		descriptionLabel.text = post.description
		countOfCommentsLabel.text = "View all \(post.countOfComments) comments"
		postedArLabel.text = post.postedAt
		
		
		avatarImageView.image = UIImage(named: "arb")
		postImageView.image = UIImage(named: "stich")
		// Но у меня не работает ниже, нужен метод dowloaded
//		avatarImageView.downloaded(from: post.avatarImageName, contentMode: .scaleToFill)
	}
}
