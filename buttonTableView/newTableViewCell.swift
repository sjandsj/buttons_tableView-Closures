//
//  newTableViewCell.swift
//  buttonTableView
//
//  Created by Rails on 05/07/19.
//  Copyright © 2019 gammastack. All rights reserved.
//

import UIKit

class newTableViewCell: UITableViewCell {

    @IBOutlet var detailsButton: UIButton!
    
    @IBOutlet var userProfileImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    
    var detailButtonAction: (() -> ())?

    override func awakeFromNib() {
        super.awakeFromNib()
        self.detailsButton.addTarget(self, action: #selector(detailButtonTapped), for: .touchUpInside)
    }
    
    @objc func detailButtonTapped() {
        detailButtonAction!()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
