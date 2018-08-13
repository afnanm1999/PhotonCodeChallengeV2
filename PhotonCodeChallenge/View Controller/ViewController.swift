//
//  ViewController.swift
//  PhotonCodeChallenge
//
//  Created by Afnan Mirza on 8/13/18.
//  Copyright © 2018 Afnan Mirza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var leastCostPath: UILabel!
    @IBOutlet weak var leastCost: UILabel!
    @IBOutlet weak var pathExists: UILabel!
    @IBOutlet weak var costInputsView: UITextView!
    var userInput = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initTexts()
    }
    
    func initTexts ()
    {
        self.costInputsView.text = "3 4 1 2 8 6\n6 1 8 2 7 4\n5 9 3 9 9 5\n8 4 1 3 2 6\n3 7 2 8 6 4"
    }
    
    @IBAction func submit(_ sender: Any) {
        
        self.costInputsView.resignFirstResponder()
        getShortestPath(input: self.costInputsView.text)
    }
    
    func getShortestPath (input:String){
        do {
            let processor = try MatrixProcessor(with: input)
            if let result = processor.processMatrix() {
                self.pathExists.text = "Path Exists: " + (result.pathCompleted ? "Yes":"No")
                self.leastCost.text = "Total Cost: " +  "\(result.cost)"
                self.leastCostPath.text = "Path: " + "\(result.path)"
            }
        }
        catch let error {
            self.pathExists.text = error.localizedDescription
            self.leastCost.text = ""
            self.leastCostPath.text = ""
            
        }
    }


}

