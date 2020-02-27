//
//  ShowImageViewController.swift
//  TabbarRaj
//
//  Created by apple on 2/25/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class ShowImageViewController: UIViewController {

    @IBOutlet weak var showImage: UIImageView!
    
    var img:UIImage?
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        showImage.image = img
        
        // Do any additional setup after loading the view.
    }
    

}
