//
//  ViewController.swift
//  tableview
//
//  Created by Javlonbek Dev on 03/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableVIew: UITableView!
    
    let names = ["Baxtiyor", "Isroil", "Jahongir", "Shaxzod", "Nosir", "Ibrohim"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableVIew.delegate = self
        tableVIew.dataSource = self
        
        tableVIew.register(UITableViewCell.self, forCellReuseIdentifier: "hello")
        // Do any additional setup after loading the view.
    }
    func hi() {
        print("asdafa")
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        hi()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        cell.backgroundColor = .red
        cell.textLabel?.text = names[indexPath.row]
        return cell
    }
}
