//
//  ContentView.swift
//  Snow
//
//  Created by Steven Lipton on 9/28/20.
//

import SwiftUI
import SpriteKit

class GameScene: SKScene{
    override func sceneDidLoad() {
        let snowParticles = SKEmitterNode(fileNamed: "SnowParticles.sks")
        snowParticles?.position = CGPoint(x: 200, y: 500)
        addChild(snowParticles!)
        backgroundColor = .clear
    }
}

struct ContentView: View {
    var scene:SKScene{
        let scene = GameScene()
        scene.size = CGSize(width: 400, height: 500)
        scene.scaleMode = .fill
        return scene
    }
    var body: some View {
        ZStack{
            SpriteView(scene: scene)
            HStack {
                Image(systemName:"snow")
                Text("Snow")
                Image(systemName:"snow")
            }
            .foregroundColor(.white)
            .font(.largeTitle)
            .padding()
        }
        .background(Color.black)
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
