//
//  ViewController.swift
//  DelegateButtonAlert
//
//  Created by yumi kanebayashi on 2021/01/06.
//

import UIKit

final class ViewController: UIViewController {

    private let cellIdentifier = "SwitchCell"

    @IBOutlet private weak var tableView: UITableView! {
        didSet {
            let nib = UINib(nibName: "SwitchCell", bundle: nil)
            tableView.register(nib, forCellReuseIdentifier: cellIdentifier)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard
            let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? SwitchCell
        else {
            return UITableViewCell()
        }

        cell.delegate = self
        cell.alertSwitch.isOn = false
        cell.indexPathLabel.text = "\(indexPath.section) - \(indexPath.row)"
        cell.indexPath = indexPath

        return cell
    }



}
extension ViewController: UITableViewDelegate {

}

extension ViewController: SwitchCellDelegate {
    func switchCell(_ cell: SwitchCell, switchValueChanged sender: UISwitch) {
        if sender.isOn {
            let alertController = UIAlertController(title: "", message: "\(cell.indexPath.section)-\(cell.indexPath.row)", preferredStyle: .alert)
            let cancel = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(cancel)

            present(alertController, animated: true, completion: nil)
        }
    }


}
