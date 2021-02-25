//
//  GameScene.swift
//  bird-test
//
//  Created by vantuzproper on 24.02.2021.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene, SKPhysicsContactDelegate {
    var backgnode : SKNode!
    var testbirdNode : SKSpriteNode!
    var gover:SKLabelNode!
    override func didMove(to view: SKView) {
        backgnode = self.childNode(withName: "bgnode")!
        testbirdNode = self.childNode(withName: "testbird") as! SKSpriteNode
        gover = self.childNode(withName: "gameover") as! SKLabelNode
        self.physicsWorld.contactDelegate = self
        let moveBG = SKAction.move(by:CGVector(dx: -1000, dy:0), duration:15)
        backgnode.run(moveBG)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        testbirdNode.physicsBody!.applyImpulse(CGVector(dx:0,dy:250)) //250 потому что если меньше то играть невозможно
    }
    func stop(){
        backgnode.removeAllActions()
        testbirdNode.physicsBody!.pinned = true
        gover.run(SKAction.fadeIn(withDuration: 1))
    }
    func didBegin(_ contact: SKPhysicsContact) {
        stop()
    }
}
