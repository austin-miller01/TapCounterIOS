//
//  ContentView.swift
//  TapCounter
//
//  Created by austin miller on 8/6/21.
//

import SwiftUI

struct ContentView: View {
    @State var count: Int = 0
    var body: some View {
        VStack{
            HStack{
                Text("Tap Counter").padding().font(.largeTitle)
            }
            VStack(alignment: .center){
                HStack{
                    Button(action: {
                        self.count+=1
                    }){Text("+").padding().foregroundColor(Color.black).font(.system(size: 60)).frame(width: 200, height: 100, alignment: .center).background(Color.green)
                        
                    }
                    
                }
                HStack{
                    Text("\(count)").padding().foregroundColor(Color.white).font(.system(size:80))
                        .frame(width: 200, height: 200, alignment: .center).border(Color.white)
                }
                HStack{
                    Button(action:
                            {
                                self.count-=1
                            }){
                        Text("-").padding().foregroundColor(Color.black).font(.system(size: 60)).frame(width: 200, height: 100, alignment: .center).background(Color.red)
                    }
                }
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
