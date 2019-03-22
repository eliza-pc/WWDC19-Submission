//
//  GameScene.swift
//  Book_Sources
//
//  Created by Eliza Maria Porto de Carvalho on 21/03/19.
//


import Foundation
import SpriteKit

public class GameScene: SKScene {
    
    
    var lightBalloon: SKSpriteNode!
    
    override public func didMove(to view: SKView) {
        super.didMove(to: view)
        
//MARK: GameScene Elements
        
        let fase1 = self.getNode(withName: "Fase1")
        //fase1!.texture = SKTexture.init(imageNamed: "fase1")
        
        lightBalloon = self.childNode(withName: "lightBalloon") as? SKSpriteNode
       //lightBalloon!.texture = SKTexture.init(imageNamed: "lightQ")
        
        let waterBalloon = self.getNode(withName: "waterBalloon")
       //waterBalloon!.texture = SKTexture.init(imageNamed: "waterQ")
        
        let co2Balloon = self.getNode(withName: "co2Balloon")
       //co2Balloon!.texture = SKTexture.init(imageNamed: "atomoQ")
        
        let water = self.getNode(withName: "water")
       //water!.texture = SKTexture.init(imageNamed: "waterR")
        
        let light = self.childNode(withName: "light")
        // light!.texture = SKTexture.init(imageNamed: "lightR")
        
        let atom = self.getNode(withName: "atom")
        //atom!.texture = SKTexture.init(imageNamed: "atomR")
        

        if lightIsVisible == false{
            
            light!.alpha = 0
            self.childNode(withName: "light")!.alpha = 0
           
        } else{
            light!.alpha = 1
           self.childNode(withName: "light")!.alpha = 1
            
        }
        
        
        if Elemento == .lightEnergy{

            lightBalloon!.alpha = 1

        }else{

            lightBalloon!.alpha = 0

        }
        
        
        
    }
    
    
//MARK: Funções
    
    func getNode(withName name: String )-> SKSpriteNode? {
        let node = self.childNode(withName: name) as? SKSpriteNode
        
        return node
    }
    
  
}
