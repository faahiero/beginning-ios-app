//
//  ContentView.swift
//  HelloWorld
//
//  Created by Fabricio Silva on 18/06/22.
//

import SwiftUI
import AVFoundation

struct ContentView: View {

    var body: some View {
        
        Button {
            let utterance = AVSpeechUtterance(string: "Hello, World")
            utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
            let synthesizer = AVSpeechSynthesizer()
            synthesizer.speak(utterance)
                
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
