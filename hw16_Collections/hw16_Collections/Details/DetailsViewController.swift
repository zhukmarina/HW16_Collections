//
//  detailsViewController.swift
//  hw16_Collections
//
//  Created by Marina Zhukova on 18.04.2024.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var detailsTitleLabel: UILabel!
    
    var detailsTitleText: String?

       override func viewDidLoad() {
           super.viewDidLoad()

           if let titleText = detailsTitleText {
               detailsTitleLabel.text = titleText
         
           }
          
       }
   }
