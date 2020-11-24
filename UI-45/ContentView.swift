//
//  ContentView.swift
//  UI-45
//
//  Created by にゃんにゃん丸 on 2020/11/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var text = ""
    @State var retrived = ""
    var body: some View {
        VStack{
            
            Text(retrived)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color(#colorLiteral(red: 0.410932149, green: 0.5844124572, blue: 0.6834867295, alpha: 1)))
            
            TextField("Enter", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                
            
            Button(action: {
                UserDefaults.standard.set(text, forKey: "MSG")
                self.retrived = self.text
                //self.text = ""
                
                
            }){
                
                
                Text("Save")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .frame(width: 200, height: 100)
                    .foregroundColor(.purple)
                    .background(Color.blue.opacity(0.3))
                    .cornerRadius(10)
                
            }
            
         
            
            
            
            
        }
      
        
        .onAppear{
            
            guard let msg = UserDefaults.standard.value(forKey: "MSG")else{return}
            self.retrived = msg as! String
            
            
        }
        
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
