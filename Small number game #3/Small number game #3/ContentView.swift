//
//  ContentView.swift
//  Small number game #3
//
//  Created by Adil Aman Mohammed on 5/30/24.
//

import SwiftUI

struct ContentView: View {
    
    
    @State var Number = 0
    @State var changemethod : Bool = true
    var body: some View {
        VStack {
            if Number > 100
            {
                Text(String(Number)).font(.largeTitle).fontWeight(.bold).foregroundColor(Color.red)
            }
            else if Number < 100 && Number > 60
            {
                Text(String(Number)).font(.largeTitle).fontWeight(.bold).foregroundColor(Color.orange)
            }
            else if Number < 61 && Number > 30
            {
                Text(String(Number)).font(.largeTitle).fontWeight(.bold).foregroundColor(Color.yellow)
            }
            else if Number < 31 && Number >= 0
            {
                Text(String(Number)).font(.largeTitle).fontWeight(.bold).foregroundColor(.green)
            }
            else { // For negative numbers
                            Text(String(Number))
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(.red)
                        }
            
            
            
            Button {
                hit()
            }
            label : {
                Image("hitbutton").resizable().aspectRatio(contentMode: .fit).frame(width: 150).cornerRadius(15).shadow(radius: 3)
            }.font(.subheadline)
        }
        .padding()
        
    }
    
    
    
    func hit()
    {
        if Number < 0
        {
            changemethod = true
        }
        else if Number > 100
        {
            changemethod = false
        }
        
        if changemethod == true
        {
            Number += Int.random(in: 1...10)
        }
        else if changemethod == false
        {
            Number -= Int.random(in: 1...10)
        }
        
    }
    
    
    
}

#Preview {
    ContentView()
}


