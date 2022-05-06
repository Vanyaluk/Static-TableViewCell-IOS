
# Static TableView Cells for your IOS App

It is a basic maket with *tableViewController*. First I created xcode project, delted *Storyboard* and setup *tableViewController*.

## Functions

*TableView* setup
```bash
tableView = UITableView(frame: .zero, style: .insetGrouped)
tableView.backgroundColor = .systemBackground
tableView.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 20)
  
```
Construct first cell, section 0, row 0
```bash
firstNameText = UITextField(frame: CGRect(x: 0, y: 0, width: firstCell.contentView.frame.width, height: firstCell.contentView.frame.height))
firstNameText.placeholder = "First Name"
firstCell.addSubview(self.firstNameText)
  
```

Construct last cell, section 0, row 1
```bash
lastNameText = UITextField(frame: CGRect(x: 0, y: 0, width: lastCell.contentView.frame.width, height: lastCell.contentView.frame.height))
lastNameText.placeholder = "Last Name"
lastCell.addSubview(lastNameText)
  
```

Return the number of rows for each section in your static table
```bash
override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 2
}
  
```

Return the row for the corresponding section and row
```bash
override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    switch indexPath.row {
    case 0:
        return firstCell
    case 1:
        return lastCell
    default: fatalError("Unknown row in section 0")
    }
}
  
```

## Lessons Learned

You will learn how to create Custom Static TableView.
