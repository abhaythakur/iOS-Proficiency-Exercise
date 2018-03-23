//
//  ViewController.swift
//  CGO
//
//  Created by Abhay on 3/23/18.
//  Copyright © 2018 Abhay. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {


 @IBOutlet var collectionView: UICollectionView!
 
    var dataModel = [DataModel]()
    override func viewDidLoad() {
        super.viewDidLoad()
  
        getCountryFactsData {
            DispatchQueue.main.async {
                self.collectionView.reloadSections(IndexSet(integer: 0))
            }

           
        }
    }

    
    // To fetch the data
    
    func getCountryFactsData(completion: @escaping () -> Void) {
        
        APIClient.getCountryFactsAPI { (json) in
            if let results = json?["rows"] as? [DataModelJSON] {
                for dict in results {
                    let newdata = DataModel(dictionary: dict)
                    self.dataModel.append(newdata)
                }
                completion()
            }
        }
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: UICollectionView delegate and data source
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataModel.count
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize
    {
         return CGSize(width:  (collectionView.frame.width - 5) / 2, height: 200)
    }
   
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionViewCell", for: indexPath) as! CollectionViewCell
        
        let model = dataModel[indexPath.row]
        
        cell.displayContentCell(imageUrl: model.imageHref!, title: model.title!)
        
        return cell
        
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
    {
        print("User tapped on item \(indexPath.row)")
        
       
    }
}

