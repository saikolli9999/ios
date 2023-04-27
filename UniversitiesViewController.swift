//
//  ViewController.swift
//  Kolli_UniversityApp
//
//  Created by Kolli,Sai Kumar on 4/18/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Universities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell =  universitiesTableView.dequeueReusableCell(withIdentifier: "domainCell", for: indexPath)
        cell.textLabel?.text = Universities[indexPath.row].domain
        return cell
    }
    

    @IBOutlet weak var universitiesTableView: UITableView!
    var Universities = universities
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        universitiesTableView.delegate = self
        universitiesTableView.dataSource = self
        self.title = "Domains"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition  = segue.identifier
        if(transition=="listsSegue") {
            var destination  = segue.destination as! UniversityListViewController
            destination.universitiesList = Universities[(universitiesTableView.indexPathForSelectedRow?.row)!]
            
        }
    }


}

