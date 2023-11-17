//
//  PostTableViewCell.swift
//  sams social media APP part 2
//
//  Created by sam long on 11/16/23.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var userLabel: UILabel!
    @IBOutlet weak var commentsLabel: UILabel!
    @IBOutlet weak var bodyTextView: UITextView!
    
    var selectedPost: Post?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        guard let post = selectedPost else { return }
        
        titleLabel.text = post.title
        dateLabel.text = post.date
        userLabel.text = post.user
        commentsLabel.text = "\(post.comments)"
        bodyTextView.text = post.bodyText
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

