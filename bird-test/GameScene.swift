//
//  GameScene.swift
//  bird-test
//
//  Created by vantuzproper on 24.02.2021.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    var backgnode : SKNode!
    override func didMove(to view: SKView) {
        backgnode = self.childNode(withName: "bgnode")!
        let moveBG = SKAction.move(by:CGVector(dx: -1000, dy:0), duration:15)
        backgnode.run(moveBG)
    }
    
    

}
