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
        configureCell(view: cell, cellState: cellState)
    }
    
    func configureCell(view: JTACDayCell?, cellState: CellState) {
        guard let cell = view as? DateCell else { return }
        cell.dateLabel.text = cellState.text
        handleCellTextColor(cell: cell, cellState: cellState)
    }
    
    func handleCellTextColor(cell: DateCell, cellState: CellState) {
        if cellState.dateBelongsTo == .thisMonth {
            cell.dateLabel.textColor = UIColor.black
        } else {
            cell.dateLabel.textColor = UIColor.gray
        }
    }
    
    func calendar(_ calendar: JTACMonthView, cellForItemAt date: Date, cellState: CellState, indexPath: IndexPath) -> JTACDayCell {
        let cell = calendar.dequeueReusableJTAppleCell(withReuseIdentifier: "dateCell", for: indexPath) as! DateCell
        self.calendar(calendar, willDisplay: cell, forItemAt: date, cellState: cellState, indexPath: indexPath)
        return cell
    }
    
    
    
}
