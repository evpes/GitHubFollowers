//
//  Sting+Ext.swift
//  GitHubFollowers
//
//  Created by evpes on 07.05.2022.
//

import Foundation

extension String {
    
    func convertToDate() -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        dateFormatter.timeZone = .current
        
        return dateFormatter.date(from: self)
    }
    
    
    func convertToDisplayFormat() -> String {
        return self.convertToDate()?.convertToMonthYearFormat() ?? "N/A"
    }
}
