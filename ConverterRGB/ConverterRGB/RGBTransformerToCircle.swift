import Foundation
import SwiftUI


struct RGBTransformerToCircle {
    
    func transFormRGB (r: String, g: String, b: String) -> Color{
        
        
        var red = Int(r) ?? 0
        var green = Int(g) ?? 0
        var blue = Int(b) ?? 0
        
        var doubleRed = Double(red)
        var doubleGreen = Double(green)
        var doubleBlue = Double(blue)
        
        return Color(red: doubleRed/255, green: doubleGreen/255, blue: doubleBlue/255)
          
    }
    
    
    
    
}
