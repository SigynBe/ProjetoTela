//
//  ViewController.swift
//  ProjetinhoDeTreino
//
//  Created by Rebeca Pacheco on 29/06/20.
//  Copyright © 2020 Rebeca Pacheco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let qtItem: CGFloat = 5
    let itemInsets = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    

}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "retangulinho", for: indexPath) as! Retangulinho
        
        return cell
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        var cellSizer = CGSize(width: 0, height: 0)
        let totalMargem = itemInsets.left * (qtItem + 1)
        let itemIndividualLargura = (collectionView.frame.width - totalMargem) / qtItem
        cellSizer.height = collectionView.frame.height
        cellSizer.width = itemIndividualLargura
        
        return cellSizer
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return itemInsets
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        return itemInsets.left
    }
}
