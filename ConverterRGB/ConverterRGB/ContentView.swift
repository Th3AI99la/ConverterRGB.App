import SwiftUI

struct ContentView: View {
    
    
    @State var red = ""
    @State var green = ""
    @State var blue = ""

    
    
    var body: some View {
        
        Form {
            
            Section (footer: Text ("ConverterRGB -> Created by Thales Henrique Alves on 03/07/23. ")){
                
                HStack{
                    Text ("Red: ")
                    TextField(
                        "Red",
                        text: $red,
                        prompt: Text("Red")
                    )
                }
                
                HStack{
                    Text ("Green: ")
                    TextField(
                        "Green",
                        text: $green,
                        prompt: Text("Green")
                    )
                }
                
                HStack{
                    Text ("Blue: ")
                    TextField(
                        "Blue",
                        text: $blue,
                        prompt: Text("Blue")
                    )
                }
                
            
            Circle()
                .foregroundColor(RGBTransformerToCircle()
                    .transFormRGB(r: red, g: green, b: blue))
            
                .padding()
            
            
        }
            }
            

  
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
