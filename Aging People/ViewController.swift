//
//  ViewController.swift
//  Aging People
//
//  Created by faisal on 26/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var table: UITableView!
    var list=[["mark",50]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource=self
        table.delegate=self
        list.removeAll()
        for i in 0...15{
            list.insert(["mark\(i)",Int.random(in: 1...100)], at: i)
        }
        table.reloadData()
        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

extension ViewController: UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
                // set text label to the model that is corresponding to the row in array
        cell.textLabel?.text = (list[indexPath.row][0] as! String)
        cell.detailTextLabel?.text = "\(list[indexPath.row][1]) years old"
        return cell
    }
    
    
    
}
