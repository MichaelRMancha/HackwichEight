//
//  detailViewControllerTwo.swift
//  HackwihcEight
//
//  Created by Michael Mancha on 4/26/18.
//  Copyright © 2018 CM Student. All rights reserved.
//

import UIKit

class detailViewControllerTwo: UIViewController {
    @IBOutlet var testView: UITextView!
    @IBOutlet var imageView: UIImageView!
    var imagePass: String?
    var descriptionPass: String?
    var titlePass: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let imageName = imagePass {
            imageView.image = UIImage(named: imageName)
        }
        if let descriptionName = descriptionPass {
            testView.text = descriptionName
        }
        if let titleName = titlePass {
            title = titleName
        }
   self.view.backgroundColor = UIColor.cyan
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
