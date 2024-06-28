//
//  LandmarkTVC.swift
//  Landmarks
//
//  Created by Shafiul on 6/28/24.
//

import UIKit

class LandmarkTVC: UITableViewCell {
    @IBOutlet weak var landmarkImageView: UIImageView!
    
    @IBOutlet weak var landmarkTitle: UILabel!
    
    @IBOutlet weak var landmarkSubtitle: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
