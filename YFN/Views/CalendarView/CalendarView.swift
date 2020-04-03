//
//  CalendarView.swift
//  YFN
//
//  Created by Axel Nunez on 3/28/20.
//  Copyright © 2020 Axel Nunez. All rights reserved.
//

import UIKit

protocol CalendarViewDelegate {
    func tappedOnDate(sender: CalendarViewController)
}

class CalendarView: UIView {
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var calendarCollectionView: UICollectionView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        Bundle.main.loadNibNamed(String(describing: CalendarView.self), owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]

    }
}
