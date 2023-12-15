//
//  MIDIsplainKitExtensionMainView.swift
//  MIDIsplainKitExtension
//
//  Created by Alexandre Enkerli on 2023-12-15.
//

import SwiftUI

struct MIDIsplainKitExtensionMainView: View {
    var parameterTree: ObservableAUParameterGroup
    
    var body: some View {
        VStack {
            ParameterSlider(param: parameterTree.global.midiNoteNumber)
                .padding()
            MomentaryButton(
                "Play note",
                param: parameterTree.global.sendNote
            )
        }
    }
}
