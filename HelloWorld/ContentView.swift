//
//  ContentView.swift
//  HelloWorld
//
//  Created by Fabricio Silva on 18/06/22.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    
    func speak (text: String){
        let utterance = AVSpeechUtterance(string: text)
        utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(utterance)
    }

    var body: some View {
        
        VStack {
            
            Button {
                speak(text: "Happy Programming")
            } label: {
                Text("Happy Programming")
                    .fontWeight(.bold)
                    .font(.system(.title, design: .rounded))
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.yellow)
            .cornerRadius(20)
            
            Button {
                speak(text: "Hello World")
                    
            } label: {
                Text("Hello World")
                    .fontWeight(.bold)
                    .font(.system(.title, design: .rounded))
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.purple)
        .cornerRadius(20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
