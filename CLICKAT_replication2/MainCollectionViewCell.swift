//
//  MainCollectionViewCell.swift
//  CLICKAT_replication2
//
//  Created by Sierra 4 on 07/03/17.
//  Copyright © 2017 code-brew. All rights reserved.
//

import UIKit

class MainCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imgMainHomeImage: UIImageView!
    @IBOutlet weak var btnSection: UIButton!
    @IBOutlet weak var collectionViewProductCategory: UICollectionView!
    
    var viewCollection: UICollectionView!
    
    var arrayProductName = ["Grocery","Applicances","Flower & Gifts","Sweet n Nuts"]
    
    override func addSubview(_ view: UIView) {
        viewCollection = UICollectionView(frame: CGRect(x: 0, y: 0, width: 320, height: 444))
        view.addSubview(viewCollection)
        viewCollection.delegate = self
        viewCollection.dataSource = self
    }
}
extension MainCollectionViewCell: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayProductName.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellForProduct = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCellCategory", for: indexPath) as! ProductCollectionViewCell
        cellForProduct.btnProductCategoryName.setTitle("Adios", for: .normal)
        cellForProduct.imgProductCategory.image = UIImage(named: "grocery")
        
        return cellForProduct
    }
}
