//
//  TableViewController.swift
//  11
//
//  Created by 中野翔太 on 2022/01/22.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    private let prefectures = Models.prefectures
    private(set) var  selectedPrefecture: String?

    @IBOutlet private weak var tableview: UITableView!

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // 1行なのでretrunは不要
        prefectures.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell1", for: indexPath)
        cell.textLabel?.text = prefectures[indexPath.row]
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let prefecture = prefectures[indexPath.row]
        self.selectedPrefecture = prefecture
        performSegue(withIdentifier: "toNext", sender: nil)
    }
}
