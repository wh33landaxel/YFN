//
//  HomeViewController.swift
//  YFN
//
//  Created by Axel Nunez on 3/28/20.
//  Copyright © 2020 Axel Nunez. All rights reserved.
//

import UIKit
import JTAppleCalendar

/**
 
 # CalendarViewController
 
 ## Functionality
 - Display a Calendar View or a Table View of all upcoming events for YFN
 - Calendar can be tapped into to reveal event data
 
 */
class CalendarViewController: UIViewController {
    
    @IBOutlet weak var calendarView: JTACMonthView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Calendar"
        print("I'm here!")
        calendarView.register(UINib.init(nibName: String(describing: DateCell.self), bundle: nil), forCellWithReuseIdentifier: "dateCell")
    }
}

extension CalendarViewController: JTACMonthViewDataSource {
    func configureCalendar(_ calendar: JTACMonthView) -> ConfigurationParameters {
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy MM dd"
        let startDate = formatter.date(from: "2018 01 01")!
        let endDate = Date()
        return ConfigurationParameters(startDate: startDate, endDate: endDate)
    }
}

extension CalendarViewController: JTACMonthViewDelegate {
    func calendar(_ calendar: JTACMonthView, willDisplay cell: JTACDayCell, forItemAt date: Date, cellState: CellState, indexPath: IndexPath) {
        let cell = cell as! DateCell
        cell.dateLabel.text = cellState.text
    }
    
    func calendar(_ calendar: JTACMonthView, cellForItemAt date: Date, cellState: CellState, indexPath: IndexPath) -> JTACDayCell {
        let cell = calendar.dequeueReusableJTAppleCell(withReuseIdentifier: "dateCell", for: indexPath) as! DateCell
        cell.dateLabel.text = cellState.text
        return cell
    }
    
    
    
}
