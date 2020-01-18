//
//  ViewController.swift
//  DatePicker
//
//  Created by Jaedoo Ko on 2020/01/18.
//  Copyright © 2020 Jaedoo Ko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let timeSelector: Selector = #selector(ViewController.updateTime)
    let interval: Double = 1.0
    var count: Int = 0
    
    @IBOutlet var txtCurrentDate: UILabel!
    @IBOutlet var txtSelectedDate: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }

    
    @IBAction func pickDate(_ sender: UIDatePicker) {
        let formatter: DateFormatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
        txtSelectedDate.text = "선택시간 : " + formatter.string(from: sender.date)
    }
    
    @objc func updateTime() {
        let date: NSDate = NSDate()
        
        let formatter: DateFormatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        txtCurrentDate.text = "현재시간 : " + formatter.string(from: date as Date)
        
//        txtCurrentDate.text = String(count)
//        count += 1
    }
}

