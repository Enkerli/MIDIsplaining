//
//  AudioUnitViewModel.swift
//  MIDIsplainKit
//
//  Created by Alexandre Enkerli on 2023-12-15.
//

import SwiftUI
import AudioToolbox
import CoreAudioKit

struct AudioUnitViewModel {
    var showAudioControls: Bool = false
    var showMIDIContols: Bool = false
    var title: String = "-"
    var message: String = "No Audio Unit loaded.."
    var viewController: ViewController?
}
