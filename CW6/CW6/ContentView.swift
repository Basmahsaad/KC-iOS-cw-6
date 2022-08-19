//
//  ContentView.swift
//  CW6
//
//  Created by basmah saad on 17/08/2022.
//

import SwiftUI

struct ContentView: View {
   @State var weigth = ""
    @State var height = ""
    @State var result = 0.0
    @State var health = ""
    
    var body: some View {
        VStack{
          Image("photo10")
                .resizable()
                .frame(width: 260, height: 260)
            
            TextField("weigth",text: $weigth)
                .textFieldStyle(.roundedBorder)
                .padding()
            TextField("height",text: $height)
                .textFieldStyle(.roundedBorder)
                .padding()
            Button {
                result = bmiCalc(w: Double(weigth) ?? 0.0, h: Double(height) ?? 0.0)
                
                if result <= 20{
                    health = "ضعيف"
                } else if result <= 25{
                    health = "جيد"
                } else{ health = "سمين"
                }
            } label: {
                Text("احسب")
                    .font(.largeTitle)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(16)
                   
                   
            }
            
            .foregroundColor(.white)
            
            VStack{
          Text("BMI = \(result)")
            Divider()
            Text("الحالة = \(health)")
            }.frame(width: 200, height: 200)
            
        }
        
        
        
    }
    func bmiCalc(w: Double, h: Double) -> Double{
        return w / (h * h)
    
    }
    
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

}
