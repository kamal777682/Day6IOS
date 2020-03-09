//
//  ViewController.swift
//  Day6IOS
//
//  Created by MacStudent on 2020-03-09.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var personList : [Person] = []
    
    let cellID = String(describing: PersonTableViewCell.self)
    override func viewDidLoad()
    {
        super.viewDidLoad()
        getData()
    }
    
        private func getData()
        {
            personList.removeAll()
            personList.append(Person(id: 1, firstName: "Kamal", lastname: "kaur", gender: "Female", salary: 250.0))
            personList.append(Person(id: 2, firstName: "Nikita", lastname: "sandhu", gender: "Female", salary: 230.0))
        }
    }

extension ViewController : UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.personList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonTableViewCell", for: indexPath) as! PersonTableViewCell
        
        let person = personList[indexPath.row]
        cell.lblFirstName.text = person.firstName
        cell.LblLastName.text = person.lastName
        cell.lblSalary.text = "$\(person.salary)"
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(100.0)
    }
    
}



