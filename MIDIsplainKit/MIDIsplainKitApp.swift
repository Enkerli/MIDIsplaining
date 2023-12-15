//
//  MIDIsplainKitApp.swift
//  MIDIsplainKit
//
//  Created by Alexandre Enkerli on 2023-12-15.
//

import CoreMIDI
import SwiftUI

@main
struct MIDIsplainKitApp: App {
    @ObservedObject private var hostModel = AudioUnitHostModel()

    var body: some Scene {
        WindowGroup {
            ContentView(hostModel: hostModel)
        }
    }
}
