//
//  ViewController.swift
//  ExTableview
//
//  Created by RLogixxTraining on 14/08/23.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
  

    var arrName = [String]()
    
    @IBOutlet weak var tblNames: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        arrName = ["AAAA","BBBB","CCCCC","DDDD","EEEE","FFFF","GGGG","HHHHHH","AAAA","BBBB","CCCCC","DDDD","EEEE","FFFF","GGGG","HHHHHH","AAAA","BBBB","CCCCC","DDDD","EEEE","FFFF","GGGG","HHHHHH"]
       // tblNames.register(UITableViewCell.self,
                               //forCellReuseIdentifier: "TableViewCell")
        self.tblNames.delegate = self
        self.tblNames.dataSource = self
        
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrName.count
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       // let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell",
                                                    // for: indexPath)
        print(indexPath.row)
        let  cell = UITableViewCell(style: .subtitle, reuseIdentifier: "TableViewCell")
            cell.textLabel?.text = self.arrName[indexPath.row]
        cell.detailTextLabel?.text = "Hello"
        cell.backgroundColor = .red
        cell.imageView?.image = UIImage(systemName: "chevron.right")
       // cell.accessoryType
            return cell
    }
    

}

