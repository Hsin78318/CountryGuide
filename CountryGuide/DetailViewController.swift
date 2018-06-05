//
//  DetailViewController.swift
//  CountryGuide
//
//  Created by Chen Hsin on 2018/6/5.
//  Copyright © 2018年 Chen Hsin. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imgImage: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    var image = UIImage()
    var name = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imgImage.image = image
        nameLabel.text = name
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
