//
//  ViewController.swift
//  quickChallenge
//
//  Created by ALVIN CHEN on 10/30/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

var names = ["one", "two", "three"]
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")!
        cell.textLabel?.text = names[indexPath.row]
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        // Do any additional setup after loading the view.
    }


}

