//
//  MIDIsplainKitApp.swift
//  MIDIsplainKit
//
//  Created by Alexandre Enkerli on 2023-12-15.
//

import CoreMIDI
import SwiftUI
import MIDIKit

@main
struct MIDIsplainKitApp: App {
    @ObservedObject private var hostModel = AudioUnitHostModel()
    @ObservedObject var midiManager = ObservableMIDIManager(
        clientName: "TestAppMIDIManager",
        model: "TestApp",
        manufacturer: "MyCompany"
    )
    @ObservedObject var midiHelper = MIDIHelper()
    
    init() {
        midiHelper.setup(midiManager: midiManager)
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView(hostModel: hostModel)
                .environmentObject(midiManager)
                .environmentObject(midiHelper)
        }
    }
}
