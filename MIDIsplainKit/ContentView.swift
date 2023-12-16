//
//  ContentView.swift
//  MIDIsplainKit
//
//  Created by Alexandre Enkerli on 2023-12-15.
//

import AudioToolbox
import SwiftUI
import MIDIKit

struct ContentView: View {
    @EnvironmentObject var midiManager: ObservableMIDIManager
    @EnvironmentObject var midiHelper: MIDIHelper
    @ObservedObject var hostModel: AudioUnitHostModel
    var margin = 10.0
    var doubleMargin: Double {
        margin * 2.0
    }
    
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Text(
                """
                This example creates a virtual MIDI input port named "\(midiHelper.virtualInputName)".
                
                Received MIDI events are logged to the console, filtering out Active Sensing and Clock events.
                
                Event values are logged verbosely for purposes of this example.
                """
            )
            .multilineTextAlignment(.center)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        .padding()
        VStack() {
            Text("\(hostModel.viewModel.title )")
                .textSelection(.enabled)
                .padding()
            VStack(alignment: .center) {
                if let viewController = hostModel.viewModel.viewController {
                    AUViewControllerUI(viewController: viewController)
                        .padding(margin)
                } else {
                    VStack() {
                        Text(hostModel.viewModel.message)
                            .padding()
                    }
                    .frame(minWidth: 400, minHeight: 200)
                }
            }
            .padding(doubleMargin)
            
            if hostModel.viewModel.showAudioControls {
                Text("Audio Playback")
                Button {
                    hostModel.isPlaying ? hostModel.stopPlaying() : hostModel.startPlaying()
                    
                } label: {
                    Text(hostModel.isPlaying ? "Stop" : "Play")
                }
            }
            if hostModel.viewModel.showMIDIContols {
                Text("MIDI Input: Enabled")
            }
            Spacer()
                .frame(height: margin)
        }
    }
}

#Preview {
    ContentView(hostModel: AudioUnitHostModel())
}
