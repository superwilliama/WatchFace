import SpriteKit
class GameScene: SKScene {
    //Define SKSpriteNode for watch hands
    var secondHand:SKSpriteNode = SKSpriteNode()
    var minuteHand:SKSpriteNode = SKSpriteNode()
    var hourHand:SKSpriteNode = SKSpriteNode()
    var secondHandBottom:SKSpriteNode = SKSpriteNode()
    var secondHandTop:SKSpriteNode = SKSpriteNode()
    // var minuteCircle:SKSpriteNode = SKSpriteNode()
    // var hourCircle:SKSpriteNode = SKSpriteNode()
    override func sceneDidLoad() {
        if let secHand:SKSpriteNode = self.childNode(withName: "SecondHand") as? SKSpriteNode{
            secondHand = secHand
        }
        if let minHand:SKSpriteNode = self.childNode(withName: "MinuteHand") as? SKSpriteNode{
            minuteHand = minHand
        }
        if let hrHand:SKSpriteNode = self.childNode(withName: "HourHand") as? SKSpriteNode{
            hourHand = hrHand
        }
        if let secHandBottom:SKSpriteNode = self.childNode(withName: "SecondHandBottom") as? SKSpriteNode{
            secondHandBottom = secHandBottom
        }
        if let secHandTop:SKSpriteNode = self.childNode(withName: "SecondHandTop") as? SKSpriteNode{
            secondHandTop = secHandTop
        }
        // if let minCircle:SKSpriteNode = self.childNode(withName: "MinuteCircle") as? SKSpriteNode{
            // minuteCircle = minCircle
        // }
        // if let hrCircle:SKSpriteNode = self.childNode(withName: "HourCircle") as? SKSpriteNode{
            // hourCircle = hrCircle
        // }
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
        let date = Date()
        let calendar = Calendar.current
        let hour = CGFloat(calendar.component(.hour, from: date))
        let minutes = CGFloat(calendar.component(.minute, from: date))
        let seconds = CGFloat(calendar.component(.second, from: date))
        let ms = CGFloat(calendar.component(.nanosecond, from: date)) / 1000000000
        secondHand.zRotation = -1 * deg2rad((seconds + ms) * 6)
        minuteHand.zRotation = -1 * deg2rad((minutes + (seconds / 60)) * 6)
        hourHand.zRotation = -1 * deg2rad(hour * 30 + minutes/2)
        secondHandBottom.zRotation = -1 * deg2rad(seconds * 6)
        secondHandTop.zRotation = -1 * deg2rad(seconds * 6)
        // minuteCircle.zRotation = -1 * deg2rad(minutes * 6)
        // hourCircle.zRotation = -1 * deg2rad(hour * 30 + minutes/2)
    }

    func deg2rad(_ number: CGFloat) -> CGFloat {
        return number * .pi / 180
    }

}
