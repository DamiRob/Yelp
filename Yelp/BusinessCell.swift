//
//  BusinessCell.swift
//  Yelp
//
//  Created by Dami Roberts on 2/18/18.
//  Copyright © 2018 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {
    
    @IBOutlet weak var thumb: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var distance: UILabel!
    @IBOutlet weak var rating: UIImageView!
    @IBOutlet weak var address: UILabel!
    @IBOutlet weak var categories: UILabel!
    @IBOutlet weak var reviews: UILabel!
    
    var business: Business! {
        didSet {
            name.text = business.name
            thumb.setImageWith(business.imageURL!)
            categories.text = business.categories
            address.text = business.address
            reviews.text = "\(business.reviewCount!) Reviews"
            rating.setImageWith(business.ratingImageURL!)
            distance.text = business.distance
    
        }
        
    
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        thumb.layer.cornerRadius = 3
        thumb.clipsToBounds = true
        name.preferredMaxLayoutWidth = name.frame.size.width
    }
    
        override func layoutSubviews() {
        super.layoutSubviews()
       
        }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
