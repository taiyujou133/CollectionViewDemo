//
//  PrinceCollectionViewController.swift
//  Demo
//
//  Created by Tai on 2022/10/23.
//

import UIKit


struct Prince {
    let name: String
    let image: String
}
class PrinceCollectionViewController: UICollectionViewController {
    let princes = (1...16).map { Prince(name: "小王子\($0)號", image: "Demo_\($0)") }

    override func viewDidLoad() {
        super.viewDidLoad()

        configureCellSize()

        // Do any additional setup after loading the view.
    }
    
    func configureCellSize() {
        let flowLayout = collectionViewLayout as? UICollectionViewFlowLayout
        flowLayout?.itemSize = .zero
        flowLayout?.minimumInteritemSpacing = 1
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return princes.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PrinceCollectionViewCell.reuseIdentifier, for: indexPath) as! PrinceCollectionViewCell
        let prince = princes[indexPath.item]
        cell.imageView.image = UIImage(named: prince.image)
    
        // Configure the cell
    
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
