//
//  CGSize+Extensions.swift
//  OpenScanner
//
//  Created by Aarav Gupta on 11/03/25.
//

import SwiftUI

extension CGSize {
    func fitAspectRatio(_ to: CGSize) -> CGSize {
        let scaleX = to.width / self.width
        let scaleY = to.height / self.height
        
        let aspectRatio = min(scaleX, scaleY)
        return .init(width: aspectRatio * width, height: aspectRatio * height)
    }
}
