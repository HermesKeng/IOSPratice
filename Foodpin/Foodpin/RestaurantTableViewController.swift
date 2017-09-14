//
//  RestaurantTableViewController.swift
//  Foodpin
//
//  Created by 耿楷寗 on 14/09/2017.
//  Copyright © 2017 耿楷寗. All rights reserved.
//

import UIKit

class RestaurantTableViewController: UITableViewController {
    
    var restaurant = ["Cafe Deademd","Homei","Teakha","Cafe Loisl","Petite Oyster","ForKee Restaurant",
                      "Po's Atelier","Bourke Street Bakery","Haigh's Chocolate","Palomino Espresso","Upstate",
                      "Traif","Graham Avenue Meats","Waffle & Wolf"]
    var restaurantImg=["cafedeadend.jpg","homei.jpg","teakha.jpg","cafeloisl.jpg","petiteoyster.jpg","forkeerestaurant.jpg","posatelier.jpg","bourkestreetbakery.jpg","haighschocolate.jpg","palominoespresso.jpg","upstate.jpg","traif.jpg","grahamavenuemeats.jpg","wafflewolf.jpg","fiveleaves.jpg","cafelore.jpg"]
    var restaurantLocation=["Hong Kong","Hong Kong","Hong Kong","Hong Kong","Taiwan","Sydney","New York","London","London","French","Spanish","Japan","Denmark","South Korea","Singapore"]
    var restaurantType=["Coffe & Tea Shop","Cafe","Tea House","Austrain / Causual Drink","French","Bakery","Bakery","Chocolate","American","Coffee & Tea","Latin American","Latin American","Spanish","Thai","Bakery"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return restaurant.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier="Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! RestaurantTableViewCell
        
        cell.nameLabel.text=restaurant[indexPath.row]
        cell.locationLabel.text=restaurantLocation[indexPath.row]
        cell.typeLabel.text=restaurantType[indexPath.row]
        cell.thumbnailImageView.image=UIImage(named: restaurantImg[indexPath.row])
        cell.thumbnailImageView.layer.cornerRadius=30.0
        cell.thumbnailImageView.clipsToBounds=true

        

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
