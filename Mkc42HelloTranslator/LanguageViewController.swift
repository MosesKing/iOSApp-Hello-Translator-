//
//  LanguageViewController.swift
//  Mkc42HelloTranslator
//
//  Created by Moesaeah King on 9/22/16.
//  Copyright © 2016 Moesaeah King. All rights reserved.
//

import UIKit

class LanguageViewController: UIViewController {
     var storeArray = ""
     var languageArray = ""
    
     
     

     
     @IBOutlet weak var labelTranslator: UILabel!
     

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = storeArray
     
          labelTranslator.text = languageArray
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
