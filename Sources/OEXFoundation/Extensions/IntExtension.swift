//
//  IntExtension.swift
//  OExFoundation
//
//  Created by Ivan Stepanok on 07.10.2024.
//

import Foundation

public extension Int {
    func formattedFileSize() -> String {
        if self == 0 {
            return "0MB"
        }
        let sizeInMB = Double(self) / 1_048_576
        let sizeInGB = Double(self) / 1_073_741_824
        let formattedString: String
        if sizeInGB >= 1 {
            formattedString = String(format: "%.1fGB", sizeInGB).replacingOccurrences(of: ".0", with: "")
        } else {
            formattedString = String(format: "%.1fMB", sizeInMB).replacingOccurrences(of: ".0", with: "")
        }
        return formattedString
    }
}
