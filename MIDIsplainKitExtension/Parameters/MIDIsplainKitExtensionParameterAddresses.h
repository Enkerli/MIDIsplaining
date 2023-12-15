//
//  MIDIsplainKitExtensionParameterAddresses.h
//  MIDIsplainKitExtension
//
//  Created by Alexandre Enkerli on 2023-12-15.
//

#pragma once

#include <AudioToolbox/AUParameters.h>

#ifdef __cplusplus
namespace MIDIsplainKitExtensionParameterAddress {
#endif

typedef NS_ENUM(AUParameterAddress, MIDIsplainKitExtensionParameterAddress) {
    sendNote = 0,
    midiNoteNumber = 1
};

#ifdef __cplusplus
}
#endif
