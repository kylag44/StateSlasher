//
//  HelpingFunctions.swift
//  StateSlasher
//
//  Created by Kyla  on 2018-12-01.
//  Copyright © 2018 Kyla . All rights reserved.
//

import Foundation
import UIKit

func randomCGFloat(_ lowerLimit: CGFloat, _ upperLimit: CGFloat) -> CGFloat {
  return lowerLimit + CGFloat(arc4random()) / CGFloat(UInt32.max) * (upperLimit - lowerLimit)
}
