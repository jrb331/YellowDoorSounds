//
//  ContentView.swift
//  YDSounds
//
//  Created by Jonathan Boyd on 10/31/22.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    
    let colors: [Color] = [Color("Blue"), Color("Purple"), Color("Yellow"), Color("Orange")]
    
    
    var shuffledPhrases = Constants.phrases.shuffled()
    
        
    var body: some View {
        ZStack {
            Color("Light Blue").ignoresSafeArea()
            
            ScrollView {
            VStack (spacing: 0) {
                    
                    HStack {
                        Text("YD Sounds")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 20)
                            .foregroundColor(Color(.white))
                            .font(Font.custom("Exo-Bold", size: 30))
                        
                        
                        
                        
                        Button (action: {}) {
                            Image(systemName: "magnifyingglass")
                                .font(.largeTitle.weight(.semibold))
                                .foregroundColor(.white)
                                .padding(.trailing, 20)
                                
                        }
                        


                    }
                    .frame(height: 65, alignment: .top)
                
                    let gridItemLayout = Array(repeating: GridItem(.flexible(), spacing: 0), count: 3)
                    
                    LazyVGrid(columns: gridItemLayout, spacing: 0) {
                        ForEach(shuffledPhrases, id: \.self) {phrase in
                            Button(
                                action: {
                                    playSound(sound: phrase, type: "m4a")
                                },
                                label: {
                                    Text(phrase)
//                                        .padding(.vertical, 20.0)
                                }
                            )
                            .frame(maxWidth: .infinity, minHeight: 130)
                            .background(colors[Int.random(in: 0...colors.count-1)])
                            .font(Font.custom("Teko-Regular", size: 25))
                            .foregroundColor(.white)
                        
                        }
                    }
                }.frame(maxHeight: .infinity, alignment: .top)
            }.padding(.top, 1)
        }
    }
        
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
