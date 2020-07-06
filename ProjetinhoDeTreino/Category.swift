//
//  File.swift
//  ProjetinhoDeTreino
//
//  Created by Rebeca Pacheco on 06/07/20.
//  Copyright © 2020 Rebeca Pacheco. All rights reserved.
//

import Foundation
import UIKit

class Category{
    var title = ""
    var imageCategory: UIImage
    var colorView: UIColor
    
    init (title: String, imageCategory: UIImage, colorView: UIColor){
        self.title =  title
        self.imageCategory = imageCategory
        self.colorView = colorView
    }
    
    static func followCategory() -> [Category]{
        
        return[
            Category(title: "Bebê adulto", imageCategory: UIImage(named: "P1")!, colorView: UIColor(red: 33, green: 137, blue: 126, alpha: 1)),
                     
            Category(title: "Livros de um nerd", imageCategory: UIImage(named: "P2")!, colorView: UIColor(red: 59, green: 169, blue: 156, alpha: 1)),
            
            Category(title: "PC de garota", imageCategory: UIImage(named: "P3")!, colorView: UIColor(red: 105, green: 209, blue: 197, alpha: 1))
        ]
    }
}
