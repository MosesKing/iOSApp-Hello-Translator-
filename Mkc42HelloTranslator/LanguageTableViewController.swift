//
//  LanguageTableViewController.swift
//  Mkc42HelloTranslator
//
//  Created by Moesaeah King on 9/22/16.
//  Copyright © 2016 Moesaeah King. All rights reserved.
//

import UIKit

class LanguageTableViewController: UITableViewController {
     
     var listOfLanguages = ["Bosnian","Catalan","Croatian","Danish","English","French","German","Haitian","Italian","Latvian","Spanish","Turkish","Welsh"]
     
     var translationArray  = ["Zdravo","Hola","Bok","Hej","Hello","Bonjour","Hallo","Alo","Ciao","Sveiki","Hola","Merhaba","Helo"]
          
     

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
        return listOfLanguages.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          let cell = tableView.dequeueReusableCell(withIdentifier: "listofLanguages", for: indexPath)

          cell.textLabel?.text = listOfLanguages[indexPath.row]
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


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     if let destination = segue.destination as? LanguageViewController{
          destination.storeArray = listOfLanguages[((tableView.indexPathForSelectedRow as IndexPath?)?.row)!]
          
          destination.languageArray = translationArray[((tableView.indexPathForSelectedRow as IndexPath?)?.row)!]
     }
     
}
}
  


