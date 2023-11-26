//
//  MeasurementFormatter+ Extension.swift
//  NearMe
//
//  Created by ioannis on 7/11/23.
//

import Foundation

extension MeasurementFormatter {
    
    static var distance: MeasurementFormatter {
        let formatter = MeasurementFormatter()
        formatter.unitStyle = .medium
        formatter.unitOptions = .naturalScale
        formatter.locale = Locale.current
        return formatter
    }
}
