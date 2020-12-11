//
//  SearchRecipeViewController.swift
//  Rankipe
//
//  Created by SB on 12/7/20.
//  Copyright © 2020 group10. All rights reserved.
//

import UIKit
import youtube_ios_player_helper

class SearchRecipeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var searchTableView: UITableView!
    var videoIDs = ["jPOxWOE-3Xk", "DaeQ2AKp00k", "sH-juTnjm-Y", "UBMqcTHHE8Y", "8UkNOQDTb7c", "AoPqKq4Wv_E", "_P1n4KaU_rQ", "mkz8otyYuRE", "isNqwzobpDE", "mcHddbql5pw"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        searchTableView.dataSource = self
        searchTableView.delegate = self
        searchTableView.rowHeight = 118
    }
    

    // MARK: - Table view data source methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        let subview = YTPlayerView(frame: CGRect(x: 8, y: 8, width: 100, height: 100))
        subview.load(withVideoId: videoIDs[indexPath.row])
        cell.addSubview(subview)
        cell.heightAnchor.constraint(equalToConstant: 116)
        return cell
    }
    
    // MARK: - Table view delegate methods
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }

}
