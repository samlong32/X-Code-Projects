//
//  TableViewController.swift
//  this is the actual family prjoect
//
//  Created by sam long on 11/15/23.
//

import UIKit

class TableViewController: UITableViewController {
    var familyMembers: [FamilyMember] = [FamilyMember(name: "Steve", age: 61), FamilyMember(name: "Patricia", age: 53), FamilyMember(name: "Ally", age: 14)]
    var familyMember: FamilyMember?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return familyMembers.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Family", for: indexPath)
        let familyMember = familyMembers[indexPath.row]
        cell.textLabel?.text = familyMember.name
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? ViewController {
//            let familyMember = familyMembers[indexPath.row]
//            vc.ageLabel.text = familyMember.name
//            vc.ageLabel?.text = "\(familyMembers[indexPath.row].age)"
//            vc.nameLabel?.text = "\(familyMembers[indexPath.row].name)"
            vc.selectedFamilyMember = familyMembers[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
        
    }
}
