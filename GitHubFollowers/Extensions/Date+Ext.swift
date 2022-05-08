//
//  Date+Ext.swift
//  GitHubFollowers
//
//  Created by evpes on 07.05.2022.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
    
}
