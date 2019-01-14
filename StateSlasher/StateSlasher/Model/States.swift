//
//  States.swift
//  StateSlasher
//
//  Created by Kyla  on 2018-12-01.
//  Copyright © 2018 Kyla . All rights reserved.
//

import SpriteKit

class States: SKNode {
  
  let rightStateAndCapitals = ["Alabama: Montgomery", "Alaska: Juneau", "Arizona: Phoenix", "Arkansas: Little Rock", "California: Sacramento", "Colorado: Denver", "Connecticut: Hartford", "Delaware: Dover", "Florida: Tallahassee", "Georgia: Atlanta", "Hawaii: Honolulu", "Idaho: Boise", "Illinois: Springfield", "Indiana: Indianapolis", "Iowa: Des Moines", "Kansas: Topeka", "Kentucky: Frankfort", "Louisiana: Baton Rouge", "Maine: Augusta", "Maryland: Annapolis", "Massachusetts: Boston", "Michigan: Lansing", "Minnesota: Saint Paul", "Mississippi: Jackson", "Missouri: Jefferson City", "Montana: Helena", "Nebraska: Lincoln", "Nevada: Carson City", "New Hampshire: Concord", "New Jersey: Trenton", "New Mexico: Santa Fe", "New York: Albany", "North Carolina: Raleigh", "North Dakota: Bismarck", "Ohio: Columbus", "Oklahoma: Oklahoma City", "Oregon: Salem", "Pennsylvania: Harrisburg", "Rhode Island: Providence", "South Carolina: Columbia", "South Dakota: Pierre", "Tennessee: Nashville", "Texas: Austin", "Utah: Salt Lake City", "Vermont: Montpelier", "Virginia: Richmond", "Washington: Olympia", "West Virginia: Charleston", "Wisconsin: Madison", "Wyoming: Cheyenne"]
  
  let wrongStateAndCapitals = ["Alabama: Birmingham", "Alaska: Anchorage", "Arizona: Tucson", "Arkansas: Pine Bluff", "California: Los Angeles", "Colorado: Colorado Springs", "Connecticut: New Haven", "Delaware: Brookside", "Florida: Miami", "Georgia: Augusta", "Hawaii: Maui", "Idaho: Twin Falls", "Illinois: Chicago", "Indiana: South Bend", "Iowa: Cedar Rapids", "Kansas: Kansas City", "Kentucky: Lexington", "Louisiana: New Orleans", "Maine: Portland", "Maryland: Baltimore", "Massachusetts: Providence", "Michigan: Detriot", "Minnesota: Duluth", "Mississippi: Biloxi", "Missouri: Kansas City", "Montana: Billings", "Nebraska: Omaha", "Nevada: Las Vegas", "New Hampshire: Concord", "New Jersey: Trenton", "New Mexico: Santa Fe", "New York: New York City", "North Carolina: Charlotte", "North Dakota: Fargo", "Ohio: Cincinnati", "Oklahoma: Tulsa", "Oregon: Portland", "Pennsylvania: Pittsburgh", "Rhode Island: Augusta", "South Carolina: Charleston", "South Dakota: Bismark", "Tennessee: Memphis", "Texas: Dallas", "Utah: Denver", "Vermont: Concord", "Virginia: Charleston", "Washington: Spokane", "West Virginia: Richmond", "Wisconsin: Green Bay", "Wyoming: Jackson"]
  
  override init() {
    super.init()
    
    var stateAndCapital = ""
    
    if randomCGFloat(0, 1) < 0.5 {
      name = "RIGHT"
      let n = Int(arc4random_uniform(UInt32(rightStateAndCapitals.count)))
      stateAndCapital = rightStateAndCapitals[n]
      
    }else {
      name = "WRONG"
      let i = Int(arc4random_uniform(UInt32(wrongStateAndCapitals.count)))
      stateAndCapital = wrongStateAndCapitals[i]
      
    }
    
    let label = SKLabelNode(text: stateAndCapital)
    label.fontSize = 50
    label.fontName = "boldSystemFont"
    label.fontColor = .blue
    label.verticalAlignmentMode = .center
    addChild(label)
    
    physicsBody = SKPhysicsBody()
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  
}
