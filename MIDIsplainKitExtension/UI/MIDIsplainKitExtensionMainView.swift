//
//  MIDIsplainKitExtensionMainView.swift
//  MIDIsplainKitExtension
//
//  Created by Alexandre Enkerli on 2023-12-15.
//

import SwiftUI
import MIDIKit
import AudioUnit

//struct MIDIsplainKitExtensionMainView: View {
//    var parameterTree: ObservableAUParameterGroup
//    @ObservedObject var midiManager = ObservableMIDIManager(
//        clientName: "TestAppMIDIManager",
//        model: "TestApp",
//        manufacturer: "MyCompany"
//    )
//    @ObservedObject var midiHelper: MIDIHelper
//
//    init(parameterTree: ObservableAUParameterGroup, midiManager: ObservableMIDIManager, midiHelper: MIDIHelper) {
//        self.parameterTree = parameterTree
//        self.midiManager = midiManager
//        self.midiHelper = midiHelper
//        self.midiHelper.setup(midiManager: self.midiManager)
//    }
//
//    var body: some View {
//        VStack {
//            ParameterSlider(param: parameterTree.global.midiNoteNumber)
//                .padding()
//            MomentaryButton(
//                "Play note",
//                param: parameterTree.global.sendNote
//            )
//            .environmentObject(midiManager)
//            .environmentObject(midiHelper)
//        }
//    }
//}

struct MIDIsplainKitExtensionMainView: View {
    var parameterTree: ObservableAUParameterGroup
    @ObservedObject var midiManager = ObservableMIDIManager(
        clientName: "TestAppMIDIManager",
        model: "TestApp",
        manufacturer: "MyCompany"
    )
    @ObservedObject var midiHelper = MIDIHelper()
    
//    init() {
//        midiHelper.setup(midiManager: midiManager)
//    }

    
    var body: some View {
        VStack {
            ParameterSlider(param: parameterTree.global.midiNoteNumber)
                .padding()
            MomentaryButton(
                "Play note",
                param: parameterTree.global.sendNote
            )
            .environmentObject(midiManager)
            .environmentObject(midiHelper)
        }
    }
}
