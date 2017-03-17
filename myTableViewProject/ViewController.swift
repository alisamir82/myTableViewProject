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
    
    
    var emojiArray : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib...
       
        maintTableView.dataSource = self
        maintTableView.delegate = self
        self.emojiArray = provideEmojiArray()
        
    }
    
    func provideEmojiArray () -> [Emoji]{
    
        var emojiArray : [Emoji] = []
        
        let emoji1 = Emoji()
        emoji1.emojiString = "😎"
        emoji1.emojiDescription = "dude with black glasses"
        
        let emoji2 = Emoji()
        emoji2.emojiString = "😍"
        emoji2.emojiDescription = "dude hearts"
        
        let emoji3 = Emoji()
        emoji3.emojiString = "🏛"
        emoji3.emojiDescription = "white house"
        
        emojiArray = [emoji1,emoji2,emoji3]
        
        return emojiArray
    
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojiArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
  
        let cell = UITableViewCell()
        let emoji = emojiArray[indexPath.row]
        
        cell.textLabel?.text = emoji.emojiString + " " + emoji.emojiDescription
        
        return cell
        
    }
    
  
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
   
        let emojiSelected = emojiArray[indexPath.row]
   
        performSegue(withIdentifier: "moveSeque", sender: emojiSelected)
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      
        let defVC = segue.destination as! DefViewController
        
        defVC.emojiObject = sender as! Emoji
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
}

