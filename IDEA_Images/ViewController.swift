//
//  ViewController.swift
//  IDEA_Images
//
//  Created by Omar Adel on 7/12/19.
//  Copyright © 2019 Omar Adel. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var Images_CV: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Images_CV.delegate = self
        Images_CV.dataSource = self
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = Images_CV.dequeueReusableCell(withReuseIdentifier: "Image_Cell", for: indexPath) as! ImageCollectionViewCell
        
        return cell
        
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (self.view.frame.width-20)/4 , height: (self.view.frame.width-20)/4 )
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }

}

