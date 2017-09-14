//
//  ViewController.swift
//  SimpleTable
//
//  Created by 耿楷寗 on 08/09/2017.
//  Copyright © 2017 耿楷寗. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    var resturantNames=["Cafe Deadend","Homei","Teakha","Cafe Loisl","Petite Oyster","For Kee Resturant","Po,s Atelier","Bourke Street Bakery","Haigh's Chocolate","Palomino Expresso","Upstate","Traif"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return resturantNames.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier="Cell"
        let cell=tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        cell.textLabel?.text=resturantNames[indexPath.row]
        cell.imageView?.image=UIImage(named: resturantNames[indexPath.row])
        return cell
    }
    override var prefersStatusBarHidden: Bool{
        return true
    }
}

