//
//  ViewController.swift
//  staticCells
//
//  Created by Иван Лукъянычев on 06.05.2022.
//

import UIKit


class TableViewController: UITableViewController {
    
    
    let firstCell: UITableViewCell = {
        let cell = UITableViewCell()
        cell.backgroundColor = .systemBackground
        return cell
    }()
    
    let lastCell: UITableViewCell = {
        let cell = UITableViewCell()
        cell.backgroundColor = .systemBackground
        return cell
    }()
    
    var firstNameText: UITextField = UITextField()
    var lastNameText: UITextField = UITextField()

        
    override func loadView() {
        super.loadView()
        
        tableView = UITableView(frame: .zero, style: .insetGrouped)
        tableView.backgroundColor = .systemBackground
        tableView.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 20)
        
        // set the title
        self.title = "User Options"
        
        // construct first cell, section 0, row 0
        firstNameText = UITextField(frame: CGRect(x: 0, y: 0, width: firstCell.contentView.frame.width, height: firstCell.contentView.frame.height))
        firstNameText.placeholder = "First Name"
        firstCell.addSubview(self.firstNameText)
        
        // construct last name cell, section 0, row 1
        lastNameText = UITextField(frame: CGRect(x: 0, y: 0, width: lastCell.contentView.frame.width, height: lastCell.contentView.frame.height))
        lastNameText.placeholder = "Last Name"
        lastCell.addSubview(lastNameText)
        
    }
    
    // Return the number of rows for each section in your static table
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    // Return the row for the corresponding section and row
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            return firstCell
        case 1:
            return lastCell
        default: fatalError("Unknown row in section 0")
        }
    }

    
}
