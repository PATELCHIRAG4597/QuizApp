//
//  ResultsViewController.swift
//  QuizApp
//
//  Created by Vivian Phung on 6/19/18.
//  Copyright © 2018 Vivian Phung. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var resultsLabel: UILabel!
    
    var noCorrect: Int = 0
    var total: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Set the results
        resultsLabel.text = "You got \(noCorrect) out of \(total) correct"
        print(total)
        print(noCorrect)
        
        // Calculate the percentage of quesitons you got right
        var percentRight = ((Double(noCorrect)) / (Double(total)))
        percentRight = percentRight * 100
        
        // Based on the percentage of questions you got right present the user with different message
        var title: String = ""
        if(percentRight < 40) {
            title = "Not Good"
        } else if(percentRight < 70) {
            title = "Almost"
        } else {
            title = "Good Job"
        }
        titleLabel.text = title
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
