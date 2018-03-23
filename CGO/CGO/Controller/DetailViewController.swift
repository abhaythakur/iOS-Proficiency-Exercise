//
//  DetailViewController.swift
//  CGO
//
//  Created by Shiva on 3/23/18.
//  Copyright © 2018 Abhay. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController , UITableViewDataSource , UITableViewDelegate{

    @IBOutlet weak var tblView: UITableView!
    var dataModel = DataModel()
    var numberOfRow = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tblView.tableFooterView = UIView()
       
            numberOfRow = 2
            DispatchQueue.main.async {
               
               self.tblView.reloadData()
            }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - UITableViewDataSource
    
   public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
   {
     return numberOfRow
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.row == 0
        {
            return 350;
        }
         return UITableViewAutomaticDimension
    }
    
            
            
            
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {

        
        if indexPath.row == 0
        {
           let   cell = tableView.dequeueReusableCell(withIdentifier: "cell_image", for: indexPath) as! CommonCell
            
            cell.lblTitle.text = dataModel.title
            
            if dataModel.imageHref!.count > 0
            {
               cell.imgView.loadImage(urlString: dataModel.imageHref!)
            }
            
             return cell
        }else
        {
           let   cell = tableView.dequeueReusableCell(withIdentifier: "cell_des", for: indexPath) as! CommonCell
            
            cell.lblDes.text = dataModel.description
            return cell
        }
        


    }
    
    
    
     
    

}
