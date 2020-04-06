//
//  ArtistViewController.swift
//  YFN
//
//  Created by Axel Nunez on 4/2/20.
//  Copyright © 2020 Axel Nunez. All rights reserved.
//

import UIKit

class ArtistViewController: UIViewController {

    @IBOutlet weak var artistTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Recent Artists"
        self.artistTableView.register(UINib.init(nibName: String(describing: ArtistTableViewCell.self), bundle: nil), forCellReuseIdentifier: ArtistTableViewCell.cellId)
        
    }
}

extension ArtistViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell : ArtistTableViewCell = tableView.dequeueReusableCell(withIdentifier: ArtistTableViewCell.cellId, for: indexPath) as? ArtistTableViewCell {
            cell.nameLabel.text = "Poopie Butthole"
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
}
