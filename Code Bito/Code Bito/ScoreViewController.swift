//
//  ScoreViewController.swift
//  Code Bito
//
//  Created by Harsh Mehta on 12/05/19.
//  Copyright © 2019 Harsh Mehta. All rights reserved.
//

import UIKit
import Charts

class ScoreViewController: UIViewController {

    
    @IBOutlet var scoreChart: PieChartView!
    
    var correctAnswer = PieChartDataEntry(value: 0)
    var wrongAnswer = PieChartDataEntry(value: 0)
    
    var totalScoreData = [PieChartDataEntry]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scoreChart.chartDescription?.text = ""
        
        correctAnswer.value = 68
        correctAnswer.label = "Correct Answers"
        
        wrongAnswer.value = 21
        wrongAnswer.label = "Wrong Answers"
        
        
        totalScoreData = [correctAnswer,wrongAnswer]
    
        updateChartData()
        
    }
    
    func updateChartData(){
        
        let chartDataSet = PieChartDataSet(values: totalScoreData, label: nil)
        
        let chartData = PieChartData(dataSet: chartDataSet)
        
        let colors = [UIColor.green,UIColor.red]
        
        chartDataSet.colors = colors 
        
        scoreChart.data =  chartData
        
        
        
        
        
    }
    


}
