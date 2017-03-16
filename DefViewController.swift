//
//  DefViewController.swift
//  myTableViewProject
//
//  Created by Ali on 16/03/2017.
//  Copyright © 2017 compume. All rights reserved.
//

import UIKit

class DefViewController: UIViewController {

    @IBOutlet weak var bigEmoji: UILabel!
    @IBOutlet weak var bigEmojiLable: UILabel!
   
    var emoji = " "
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bigEmoji.text = emoji
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
