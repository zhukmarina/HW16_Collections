//
//  CollectionViewCell.swift
//  hw16_Collections
//
//  Created by Marina Zhukova on 17.04.2024.
//

import UIKit

class CollectionViewCell: UICollectionViewCell{
    
    @IBOutlet weak var titleLable: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var stepLabel: UILabel!
    
    override func awakeFromNib() {
        titleLable.text = "Title"
        descriptionLabel.text = "Lorem ipsum dolor sit amet"
    }
}
