//
//  SwitchCell.swift
//  DelegateButtonAlert
//
//  Created by yumi kanebayashi on 2021/01/08.
//

import UIKit

protocol SwitchCellDelegate: AnyObject {
    func switchCell(_ cell: SwitchCell, switchValueChanged sender: UISwitch)
}
class SwitchCell: UITableViewCell {

    weak var delegate: SwitchCellDelegate?

    @IBOutlet weak var indexPathLabel: UILabel!
    @IBOutlet weak var alertSwitch: UISwitch!
    var indexPath: IndexPath!

    @IBAction func onSwitchValueChanged(_ sender: UISwitch) {
        delegate?.switchCell(self, switchValueChanged: sender)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
