//
//  LikeViewController.swift
//  DemoApp
//
//  Created by Durgesh Kumar on 08/04/21.
//

import UIKit
import CoreData

class LikeViewController: UIViewController {

    @IBOutlet var tableView_likedUser: UITableView!
    
    var tableDataArray = [likedUser]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView_likedUser.register(UINib(nibName: "UserTableViewCell", bundle: nil), forCellReuseIdentifier: "UserTableViewCell")

        
        self.tableDataArray = DBClass().getDataFromDB(entityName: "Likelist") ?? []
        self.tableView_likedUser.reloadData()
        
    }
    

    
    
    

}
