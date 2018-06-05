//
//  ViewController.swift
//  CountryGuide
//
//  Created by Chen Hsin on 2018/6/3.
//  Copyright © 2018年 Chen Hsin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    
    let imageArray = [UIImage(named: "bankok"),UIImage(named: "Hongkong"),UIImage(named: "Seoul"),UIImage(named: "Singapore"),UIImage(named: "Taiwan")]
    let nameArray = ["bankok","Hongkong","Seoul","Singapore","Taiwan"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }

    //將資料放入畫面
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MainCollectionViewCell", for: indexPath) as! MainCollectionViewCell
        cell.imgImageView.image = imageArray[indexPath.row]
        cell.lblLabel.text! = nameArray[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let mainStoryboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let detailViewController = mainStoryboard.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        
        detailViewController.image = imageArray[indexPath.row]!
        detailViewController.name = nameArray[indexPath.row]
        self.navigationController?.pushViewController(detailViewController, animated: true)
    }

}

