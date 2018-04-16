//
//  ViewControllerTwo.swift
//  HackwihcEight
//
//  Created by Michael Mancha on 4/9/18.
//  Copyright © 2018 CM Student. All rights reserved.
//

import UIKit

class ViewControllerTwo: UIViewController {

    @IBOutlet var tableViewOne: UITableView!
    var arrayRestaurant = ["Ruby Tuesday", "Kapolei Commons 12", "Denny's", "Kalapawai", "Dunkin' Donuts", "Subway"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
