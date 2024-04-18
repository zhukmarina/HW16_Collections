//
//  mainFlowViewController.swift
//  hw16_Collections
//
//  Created by Marina Zhukova on 17.04.2024.
//

import UIKit

class mainFlowViewController: UIViewController {
    
    @IBOutlet weak var mainFlowCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainFlowCollectionView.delegate = self
        mainFlowCollectionView.dataSource = self
    }

}

extension mainFlowViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let detailsVC = storyboard?.instantiateViewController(withIdentifier: "DetailsViewController") as? DetailsViewController else {
            return
        }
        detailsVC.detailsTitleText = "Title \(indexPath.row)"
        navigationController?.pushViewController(detailsVC, animated: true)
    }
}

extension mainFlowViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 24
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "mainCell", for: indexPath) as? mainFlowCollectionViewCell else {
            assertionFailure()
            return UICollectionViewCell()
        }
        cell.textLabel.text = "\(indexPath.row)"
       
        return cell
        
        
    }
}

extension mainFlowViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellWidth = collectionView.bounds.size.width / 3.0
        return CGSize(width: cellWidth, height: cellWidth)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return .zero
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return .zero
    }
}
