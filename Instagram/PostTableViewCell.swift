//
//  PostTableViewCell.swift
//  Instagram
//
//  Created by Jetry Dumont on 9/21/18.
//  Copyright © 2018 Wendy Jean. All rights reserved.
//

import UIKit
import Parse
import ParseUI

class PostTableViewCell: UITableViewCell {
    
    @IBOutlet weak var UsernameLabel: UILabel!
    @IBOutlet weak var postImageView: PFImageView!
    @IBOutlet weak var captionLabel: UILabel!
    
    var instagramPost: PFObject! {
        didSet {
            self.captionLabel.text = instagramPost["caption"] as? String
            self.postImageView.file = instagramPost["media"] as? PFFile
            let author = instagramPost["author"] as? PFUser
            self.UsernameLabel.text = author?.username
            self.postImageView.loadInBackground()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
