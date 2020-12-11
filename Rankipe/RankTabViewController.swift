//
//  RankTabViewController.swift
//  Rankipe
//
//  Created by Pawan on 12/10/20.
//  Copyright © 2020 group10. All rights reserved.
//

import UIKit

class RankTabViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    


    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RankedCell") as! RankedTableViewCell
        cell.TitleLabel.text = "Any Title "
        cell.RateLabel.text = "Any Rate 0-5/0-10"
        return cell
    }
    


}
