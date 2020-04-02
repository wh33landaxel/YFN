//
//  HomeViewController.swift
//  YFN
//
//  Created by Axel Nunez on 3/28/20.
//  Copyright © 2020 Axel Nunez. All rights reserved.
//

import UIKit

/**
 
 # CalendarViewController
 
 ## Functionality
 - Display a Calendar View or a Table View of all upcoming events for YFN
 - Calendar can be tapped into to reveal event data
        
*/
class CalendarViewController: UIViewController {

    @IBOutlet weak var calendarView: CalendarView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Calendar"
        print("I'm here!")
    }

}
