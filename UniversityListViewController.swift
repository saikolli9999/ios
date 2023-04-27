//
//  UniversityListViewController.swift
//  Kolli_UniversityApp
//
//  Created by Kolli,Sai Kumar on 4/18/23.
//

import UIKit

class UniversityListViewController: UIViewController , UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (universitiesList?.list_Array.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell =  universityListTableView.dequeueReusableCell(withIdentifier: "listCell", for: indexPath)
        cell.textLabel?.text = universitiesList?.list_Array[indexPath.row].collegeName
        return cell

    }
    

    @IBOutlet weak var universityListTableView: UITableView!
    var domainName = "";
    var titleText = ""
    var universitiesList : Universities?
    override func viewDidLoad() {
        super.viewDidLoad()
        universityListTableView.delegate = self
        universityListTableView.dataSource = self
        self.title = universitiesList?.domain
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if(transition == "universityInfoSegue") {
            var destination = segue.destination as! UniversityInfoViewController
            destination.university = universitiesList?.list_Array[(universityListTableView.indexPathForSelectedRow?.row)!]
            
        }
    }

}
