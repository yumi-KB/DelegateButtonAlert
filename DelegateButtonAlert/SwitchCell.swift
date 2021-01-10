//
//  SwitchCell.swift
//  DelegateButtonAlert
//
//  Created by yumi kanebayashi on 2021/01/08.
//

import UIKit

class SwitchCell: UITableViewCell {

    @IBOutlet private weak var indexPathLabel: UILabel!
    @IBOutlet weak var alertSwitch: UISwitch!
    @IBAction func onSwitchValueChanged(_ sender: UISwitch) {
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
