//
//  MIDIsplainKitExtensionAudioUnit.h
//  MIDIsplainKitExtension
//
//  Created by Alexandre Enkerli on 2023-12-15.
//

#import <AudioToolbox/AudioToolbox.h>
#import <AVFoundation/AVFoundation.h>

@interface MIDIsplainKitExtensionAudioUnit : AUAudioUnit
- (void)setupParameterTree:(AUParameterTree *)parameterTree;
@end
