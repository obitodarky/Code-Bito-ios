//
//  LineChartViewController.swift
//  Code Bito
//
//  Created by Harsh Mehta on 12/05/19.
//  Copyright © 2019 Harsh Mehta. All rights reserved.
//

import UIKit
import Charts

class LineChartViewController: UIViewController {

    @IBOutlet var lineChartView: LineChartView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        setChartValues()
    }
    func setChartValues(){
        
        let values = (0..<5).map { (i) -> ChartDataEntry in
            let val = Double(arc4random_uniform(5))
            
            return ChartDataEntry(x: Double(i), y:
            val)
            
            
        }
        
        let set1 = LineChartDataSet(values: values, label: "VR Development")
        set1.circleHoleColor = .green
        let data = LineChartData(dataSet: set1)
        
        
        self.lineChartView.data = data
    }
    

}
