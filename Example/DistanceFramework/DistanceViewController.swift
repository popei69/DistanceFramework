//
//  ViewController.swift
//  DistanceFramework
//
//  Created by popei69 on 10/15/2017.
//  Copyright (c) 2017 popei69. All rights reserved.
//

import UIKit
import DistanceFramework

class DistanceViewController: UIViewController {
    
    @IBOutlet weak var resultLabel : UILabel!
    @IBOutlet weak var entryLabel : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let distance = Distance(value: 3.0, unit: .mile)
        entryLabel.text = distance.descriptionValue
        
        let convertedDistance = DistanceConverter.convert(distance, to: .kilometer)
        resultLabel.text = convertedDistance.descriptionValue
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

