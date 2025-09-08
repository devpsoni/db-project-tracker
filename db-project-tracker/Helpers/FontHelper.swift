//
//  FontHelper.swift
//  db-project-tracker
//
//  Created by Dev Soni on 08/09/25.
//

// This is a Font Extenshion for the font styling which is going to be used in the app.
// for the colors: we add it through the assets catalogue

import Foundation
import SwiftUI

extension Font {
    static var screenHeading = Font.system(size: 36, weight: .bold) // static so we dont have to create an instance. we can just call it directly like Font.somthing
    static var bigheadline = Font.system(size: 15, weight: .bold)
    static var smallheadline = Font.system(size: 10, weight: .bold)
    static var featuredNumber = Font.system(size: 18)
    static var featuredText = Font.system(size: 12)
    static var regularText = Font.system(size: 10)
    static var captionText = Font.system(size: 8)
}
