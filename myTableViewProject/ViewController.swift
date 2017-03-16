//
//  ViewController.swift
//  myTableViewProject
//
//  Created by Ali on 16/03/2017.
//  Copyright © 2017 compume. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var maintTableView: UITableView!
    
    var emojis = ["😙","🌝","🐈","😎","😍","🏕","🛶","🏛"]
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib...
       
        maintTableView.dataSource = self
        maintTableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
        let emoji = emojis[indexPath.row]
    performSegue(withIdentifier: "moveSeque", sender: emoji)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      
        let defVC = segue.destination as! DefViewController
      defVC.emoji = sender as! String
    
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

