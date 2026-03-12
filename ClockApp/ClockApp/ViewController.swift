//
//  ViewController.swift
//  ClockApp
//
//  Created by Mikael Engvall on 2026-03-12.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TimeLabel: UILabel!
    
    
    let formatter = DateFormatter()
    
    var timer : Timer?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        formatter.timeStyle = .medium
        
        updateTimeLabel()
        
        timer = Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true, block: updateTimeLabel(timer:))
    }
    
    
    func updateTimeLabel(timer: Timer? = nil) {
        let date = Date()
        
        let dateString = formatter.string(from: date)
        
        TimeLabel.text = dateString
        
        
    }
    
    deinit{
        timer?.invalidate()
    }


}

