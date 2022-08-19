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
            VStack{
            HStack{
                Image(systemName:"book.fill")
                    
                Spacer()
                Image(systemName:"chevron.right")
                    
            }.padding()
            .background(Color.white.opacity(0.3))
            Spacer()
            }.foregroundColor(Color.white)
            
            VStack {
                RowView(myCounter: $counter[0], title: "أستغفِرُالله")
                RowView(myCounter: $counter[1], title: "الحمدُلله")
                RowView(myCounter: $counter[2], title: "سبحان الله")
           
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

struct RowView: View {
    @Binding var myCounter : Int
    @State var title: String
    var body: some View {
        HStack{
            Text(title)
                .font(.body.bold())
            Spacer()
            Text("\(myCounter)")
                .font(.largeTitle)
                .frame(width: 80, height: 80,alignment: .center)
                .background(Color.clear)
                .clipShape(Circle())
                .padding()
                .onTapGesture {
              myCounter = myCounter + 1
            }
        }.padding()
    }
}
