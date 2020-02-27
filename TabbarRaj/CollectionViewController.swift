//
//  CollectionViewController.swift
//  TabbarRaj
//
//  Created by apple on 2/25/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource{
    
    @IBOutlet weak var collectionView: UICollectionView!
    let imageArray = ["A","B","C","D","E","C","B"]
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.cellImage.image = UIImage(named: imageArray[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let imageInfo = GSImageInfo(image: UIImage(named: imageArray[indexPath.item])!, imageMode: .aspectFit)
        let trasitionInfo = GSTransitionInfo(fromView: collectionView)
       let imageViewer = GSImageViewerController(imageInfo: imageInfo, transitionInfo: trasitionInfo)
        imageViewer.dismissCompletion = {
            print("Dismiss called.")
        }
        
        present(imageViewer, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


}
