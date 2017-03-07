//
//  ViewController.swift
//  CLICKAT_replication2
//
//  Created by Sierra 4 on 07/03/17.
//  Copyright © 2017 code-brew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellForSection = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! MainCollectionViewCell
        cellForSection.imgMainHomeImage.image = UIImage(named: "background1")
        cellForSection.btnSection.setTitle("Section \(indexPath.section)", for: .normal)
        return cellForSection
    }
}

