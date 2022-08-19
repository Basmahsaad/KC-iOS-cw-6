//
//  ContentView.swift
//  CW6,2
//
//  Created by basmah saad on 17/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var counter : [Int] = [0, 0, 0]
    var body: some View {
        ZStack{
            Image("photo12")
                .resizable()
                .ignoresSafeArea()
                
            VStack {
            HStack{
                Image(systemName:"book.fill")
                Spacer()
                Image(systemName:"chevron.right")
            }.padding()
                    .background(Color.white.opacity(0.3))
                Spacer()
            }.foregroundColor(Color.white)
                            
            
            VStack{
                HStack{
                    Text("أستغفِرُالله العَظيم")
                        .font(.callout)
                    Spacer()
                    Text("\(counter[0])")
                        .font(.callout)
                        .frame(width: 60, height: 60,alignment: .center)
                        .background(Color.white.opacity(2))
                        .clipShape(Circle())
                        .padding()
                    onTapGesture {
                        counter[0] = counter[0] + 1
                    }
                }
            }.foregroundColor(Color.white)
            
            
          //
            
        }
        
    }
        
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
