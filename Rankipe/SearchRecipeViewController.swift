//
//  SearchRecipeViewController.swift
//  Rankipe
//
//  Created by SB on 12/7/20.
//  Copyright © 2020 group10. All rights reserved.
//

import UIKit

class SearchRecipeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var searchTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        searchTableView.dataSource = self
        searchTableView.delegate = self
    }
    

    // MARK: - Table view data source methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let title = "Cell #\(indexPath.row)"
        let cell = UITableViewCell()
        cell.textLabel?.text = title
        
        return cell
    }

}
