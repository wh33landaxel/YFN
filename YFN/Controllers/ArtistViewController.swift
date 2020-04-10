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
        setupTableViewStructure()
        
    }
}

extension ArtistViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell : ArtistTableViewCell = tableView.dequeueReusableCell(withIdentifier: ArtistTableViewCell.cellId, for: indexPath) as? ArtistTableViewCell {
            cell.nameLabel.text = "Axel Nunez"
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
}

fileprivate extension ArtistViewController {
    
    func setupTableViewStructure() {
        
        
        artistTableView.rowHeight = UITableView.automaticDimension
        artistTableView.estimatedRowHeight = 150
        if #available(iOS 11.0, *) {
            artistTableView.contentInsetAdjustmentBehavior = .never
        }
        self.title = "Recent Artists"
        artistTableView.register(UINib.init(nibName: String(describing: ArtistTableViewCell.self), bundle: nil), forCellReuseIdentifier: ArtistTableViewCell.cellId)
        
        
        
    }
}
