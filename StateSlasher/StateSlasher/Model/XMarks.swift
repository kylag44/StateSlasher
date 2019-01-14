//
//  XMarks.swift
//  StateSlasher
//
//  Created by Kyla  on 2018-12-06.
//  Copyright © 2018 Kyla . All rights reserved.
//

import SpriteKit

class XMarks: SKNode {
  
  var xArray = [SKSpriteNode]()
  var numXs = Int()
  
  let greyXPic = SKTexture(imageNamed: "greyX")
  let redXPic = SKTexture(imageNamed: "redX")
  
  init(num: Int = 0) {
    super.init()
    
    numXs = num
    
    for i in 0..<num {
      let xMark = SKSpriteNode(imageNamed: "greyX")
      xMark.size = CGSize(width: 60, height: 60)
      xMark.position.x = -CGFloat(i)*70
      addChild(xMark)
      xArray.append(xMark)
    }
  }
  
  func update(num: Int) {
    if num <= numXs {
      xArray[xArray.count-num].texture = redXPic
    }
  }
  
  func reset() {
    for xMark in xArray {
      xMark.texture = greyXPic
    }
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  
}
