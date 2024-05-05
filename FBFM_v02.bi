''----------------------------------------------------------------------------
'' FBFMlib v0.20b - (for FreeBASIC v1.08 or higher on MS-DOS/FreeDOS ONLY!)
'' Presented by Adigun Azikiwe Polack.
'' (c)2024 Adigun Azikiwe Polack.  All Rights Reserved.
''----------------------------------------------------------------------------

' BIG SPECIAL THANKS to Tim Truman for the Adlib FM-Synth Sound Code that is
' successfully implemented in FBFMlib for FreeBASIC DOS in 2024!!!
'
' Adlib FM-Synth DOS Code by Adigun Azikiwe Polack in FreeBASIC DOS!!!


Declare Sub FBFMlib_SetBaseAddress_SB_210h
Declare Sub FBFMlib_SetBaseAddress_SB_220h
Declare Sub FBFMlib_SetBaseAddress_SB_230h
Declare Sub FBFMlib_SetBaseAddress_SB_240h
Declare Sub FBFMlib_SetBaseAddress_SB_250h
Declare Sub FBFMlib_SetBaseAddress_SB_260h
Declare Sub FBFMlib_SetBaseAddress_SB_270h
Declare Sub FBFMlib_SetBaseAddress_SB_280h

Declare Function FBFMlib_DetectSB as Long

Declare Function FBFMlib_AutoDetectSB as Long

Declare Sub FBFMlib_InitFM

Declare Sub FBFMlib_PlayFM_RawSFX ( Byval FM_channel                   as Ubyte = 0, _
                                    Byval FM_input_Connection          as Ubyte = 0, _
                                    Byval FM_input_Note_Frequency      as Ushort = 0, _
                                    Byval FM_input_Octave              as Ubyte = 0, _
                                    Byval FM_input_Multiplier_Start    as Ubyte = 0, _
                                    Byval FM_input_Multiplier_Finish   as Ubyte = 0, _
                                    Byval FM_input_Waveform_Start      as Ubyte = 0, _
                                    Byval FM_input_Waveform_Finish     as Ubyte = 0, _
                                    Byval FM_input_Vibrato_Start       as Ubyte = 0, _
                                    Byval FM_input_Vibrato_Finish      as Ubyte = 0, _
                                    Byval FM_input_Feedback            as Ubyte = 0, _
                                    Byval FM_input_Attack_Start        as Ubyte = 0, _
                                    Byval FM_input_Attack_Finish       as Ubyte = 0, _
                                    Byval FM_input_Decay_Start         as Ubyte = 0, _
                                    Byval FM_input_Decay_Finish        as Ubyte = 0, _
                                    Byval FM_input_Sustain_Start       as Ubyte = 0, _
                                    Byval FM_input_Sustain_Finish      as Ubyte = 0, _
                                    Byval FM_input_Release_Start       as Ubyte = 0, _
                                    Byval FM_input_Release_Finish      as Ubyte = 0, _
                                    Byval FM_input_Tremole_Start       as Ubyte = 0, _
                                    Byval FM_input_Tremole_Finish      as Ubyte = 0, _
                                    Byval FM_input_Attenuation_Start   as Ubyte = 0, _
                                    Byval FM_input_Attenuation_Finish  as Ubyte = 0 )

Declare Sub FBFMlib_PlayFM_Note ( Byval FM_channel                 as Ubyte = 0, _
                                  Byval FM_input_Note              as String = "C", _
                                  Byval FM_input_Octave            as Ubyte = 4, _
                                  Byval FM_input_Volume            as Ubyte = 63, _
                                  Byval FM_input_Connection        as Ubyte = 0, _
                                  Byval FM_input_Multiplier_Start  as Ubyte = 0, _
                                  Byval FM_input_Multiplier_Finish as Ubyte = 0, _
                                  Byval FM_input_Waveform_Start    as Ubyte = 0, _
                                  Byval FM_input_Waveform_Finish   as Ubyte = 0, _
                                  Byval FM_input_Vibrato_Start     as Ubyte = 0, _
                                  Byval FM_input_Vibrato_Finish    as Ubyte = 0, _
                                  Byval FM_input_Feedback          as Ubyte = 0, _
                                  Byval FM_input_Attack_Start      as Ubyte = 7, _
                                  Byval FM_input_Attack_Finish     as Ubyte = 8, _
                                  Byval FM_input_Decay_Start       as Ubyte = 10, _
                                  Byval FM_input_Decay_Finish      as Ubyte = 10, _
                                  Byval FM_input_Sustain_Start     as Ubyte = 0, _
                                  Byval FM_input_Sustain_Finish    as Ubyte = 0, _
                                  Byval FM_input_Release_Start     as Ubyte = 4, _
                                  Byval FM_input_Release_Finish    as Ubyte = 4, _
                                  Byval FM_input_Tremole_Start     as Ubyte = 0, _
                                  Byval FM_input_Tremole_Finish    as Ubyte = 0, _
                                  Byval FM_input_Attenuation       as Ubyte = 63 )

Declare Sub FBFMlib_PlayFM_Sine ( Byval FM_channel             as Ubyte = 0, _
                                  Byval FM_input_Note          as String = "C", _
                                  Byval FM_input_Octave        as Ubyte = 4, _
                                  Byval FM_input_Volume        as Ubyte = 63, _
                                  Byval FM_input_FadeIn_Level  as Ubyte = 15, _
                                  Byval FM_input_FadeOut_Level as Ubyte = 0 )

Declare Sub FBFMlib_PlayFM_SemiSine ( Byval FM_channel             as Ubyte = 0, _
                                      Byval FM_input_Note          as String = "C", _
                                      Byval FM_input_Octave        as Ubyte = 4, _
                                      Byval FM_input_Volume        as Ubyte = 63, _
                                      Byval FM_input_FadeIn_Level  as Ubyte = 15, _
                                      Byval FM_input_FadeOut_Level as Ubyte = 0 )

Declare Sub FBFMlib_PlayFM_SawCurve ( Byval FM_channel             as Ubyte = 0, _
                                      Byval FM_input_Note          as String = "C", _
                                      Byval FM_input_Octave        as Ubyte = 4, _
                                      Byval FM_input_Volume        as Ubyte = 63, _
                                      Byval FM_input_FadeIn_Level  as Ubyte = 15, _
                                      Byval FM_input_FadeOut_Level as Ubyte = 0 )

Declare Sub FBFMlib_PlayFM_Pulse ( Byval FM_channel             as Ubyte = 0, _
                                   Byval FM_input_Note          as String = "C", _
                                   Byval FM_input_Octave        as Ubyte = 4, _
                                   Byval FM_input_Volume        as Ubyte = 63, _
                                   Byval FM_input_FadeIn_Level  as Ubyte = 15, _
                                   Byval FM_input_FadeOut_Level as Ubyte = 0 )

Declare Sub FBFMlib_PlayFM_TinyTone ( Byval FM_channel             as Ubyte = 0, _
                                      Byval FM_input_Note          as String = "C", _
                                      Byval FM_input_Octave        as Ubyte = 4, _
                                      Byval FM_input_Volume        as Ubyte = 63, _
                                      Byval FM_input_FadeIn_Level  as Ubyte = 15, _
                                      Byval FM_input_FadeOut_Level as Ubyte = 0 )

Declare Sub FBFMlib_PlayFM_WildTone ( Byval FM_channel             as Ubyte = 0, _
                                      Byval FM_input_Note          as String = "C", _
                                      Byval FM_input_Octave        as Ubyte = 4, _
                                      Byval FM_input_Volume        as Ubyte = 63, _
                                      Byval FM_input_FadeIn_Level  as Ubyte = 15, _
                                      Byval FM_input_FadeOut_Level as Ubyte = 0 )

Declare Sub FBFMlib_PlayFM_SoftTone ( Byval FM_channel             as Ubyte = 0, _
                                      Byval FM_input_Note          as String = "C", _
                                      Byval FM_input_Octave        as Ubyte = 4, _
                                      Byval FM_input_Volume        as Ubyte = 63, _
                                      Byval FM_input_FadeIn_Level  as Ubyte = 15, _
                                      Byval FM_input_FadeOut_Level as Ubyte = 0 )

Declare Sub FBFMlib_PlayFM_Boom ( Byval FM_channel              as Ubyte = 0, _
                                  Byval FM_input_Volume         as Ubyte = 63, _
                                  Byval FM_input_FadeIn_Level   as Ubyte = 15, _
                                  Byval FM_input_FadeOut_Level  as Ubyte = 4 )

Declare Sub FBFMlib_PlayFM_Static ( Byval FM_channel              as Ubyte = 0, _
                                    Byval FM_input_Volume         as Ubyte = 63, _
                                    Byval FM_input_FadeIn_Level   as Ubyte = 15, _
                                    Byval FM_input_FadeOut_Level  as Ubyte = 0 )

Declare Sub FBFMlib_PlayFM_Noise ( Byval FM_channel              as Ubyte = 0, _
                                   Byval FM_input_NoiseFrequency as Ushort = 640, _
                                   Byval FM_input_Volume         as Ubyte = 63, _
                                   Byval FM_input_FadeIn_Level   as Ubyte = 15, _
                                   Byval FM_input_FadeOut_Level  as Ubyte = 0, _
                                   Byval FM_input_WaveForm_from  as Ushort = 0, _
                                   Byval FM_input_WaveForm_to    as Ushort = 0 )

Declare Sub FBFMlib_PlayFM_Racecar ( Byval FM_channel               as Ubyte = 0, _
                                     Byval FM_input_EngineFrequency as Ushort = 0, _
                                     Byval FM_input_Volume          as Ubyte = 63, _
                                     Byval FM_input_FadeIn_Level    as Ubyte = 15, _
                                     Byval FM_input_FadeOut_Level   as Ubyte = 0 )

Declare Sub FBFMlib_PlayFM_Motorcycle ( Byval FM_channel               as Ubyte = 0, _
                                        Byval FM_input_EngineFrequency as Ushort = 0, _
                                        Byval FM_input_Volume          as Ubyte = 63, _
                                        Byval FM_input_FadeIn_Level    as Ubyte = 15, _
                                        Byval FM_input_FadeOut_Level   as Ubyte = 0 )

Declare Sub FBFMlib_PlayFM_Helicopter ( Byval FM_channel                as Ubyte = 0, _
                                        Byval FM_input_ChopperFrequency as Ushort = 640, _
                                        Byval FM_input_Volume           as Ubyte = 63, _
                                        Byval FM_input_FadeIn_Level     as Ubyte = 15, _
                                        Byval FM_input_FadeOut_Level    as Ubyte = 0 )

Declare Sub FBFMlib_PlayFM_Biplane ( Byval FM_channel                  as Ubyte = 0, _
                                     Byval FM_input_PropellerFrequency as Ushort = 0, _
                                     Byval FM_input_Volume             as Ubyte = 63, _
                                     Byval FM_input_FadeIn_Level       as Ubyte = 15, _
                                     Byval FM_input_FadeOut_Level      as Ubyte = 0 )

Declare Sub FBFMlib_PlayFM_UFO ( Byval FM_channel             as Ubyte = 0, _
                                 Byval FM_input_UFO_Frequency as Ushort = 320, _
                                 Byval FM_input_Volume        as Ubyte = 63, _
                                 Byval FM_input_FadeIn_Level  as Ubyte = 15, _
                                 Byval FM_input_FadeOut_Level as Ubyte = 0 )

Declare Sub FBFMlib_PlayFM_Zap ( Byval FM_channel             as Ubyte = 0, _
                                 Byval FM_input_Zap_Frequency as Ushort = 128, _
                                 Byval FM_input_Volume        as Ubyte = 63, _
                                 Byval FM_input_FadeIn_Level  as Ubyte = 15, _
                                 Byval FM_input_FadeOut_Level as Ubyte = 0, _
                                 Byval FM_input_WaveForm      as Ubyte = 3 )

Declare Sub FBFMlib_PlayFM_Laser ( Byval FM_channel               as Ubyte = 0, _
                                   Byval FM_input_Laser_Frequency as Ushort = 500, _
                                   Byval FM_input_Volume          as Ubyte = 63, _
                                   Byval FM_input_FadeIn_Level    as Ubyte = 15, _
                                   Byval FM_input_FadeOut_Level   as Ubyte = 0, _
                                   Byval FM_input_WaveForm_from   as Ushort = 0, _
                                   Byval FM_input_WaveForm_to     as Ushort = 3 )

Declare Sub FBFMlib_PlayFM_TractorBeam ( Byval FM_channel             as Ubyte = 0, _
                                         Byval FM_input_BeamFrequency as Ushort = 400, _
                                         Byval FM_input_Volume        as Ubyte = 63, _
                                         Byval FM_input_FadeIn_Level  as Ubyte = 15, _
                                         Byval FM_input_FadeOut_Level as Ubyte = 0 )

Declare Sub FBFMlib_StopFM_Channel ( Byval FM_channel as Ubyte = 0 )

Declare Sub FBFMlib_ClearFM


Dim Shared as String FM_chaninfo(8)   'FM register information for 9 channels
FM_chaninfo(0) = "&hB0&h20&h23&h40&h43&h60&h63&h80&h83&hA0&HBD&HC0&HE0&HE3&hB0"
FM_chaninfo(1) = "&hB1&h21&h24&h41&h44&h61&h64&h81&h84&hA1&HBD&HC1&HE1&HE4&hB1"
FM_chaninfo(2) = "&hB2&h22&h25&h42&h45&h62&h65&h82&h85&hA2&HBD&HC2&HE2&HE5&hB2"
FM_chaninfo(3) = "&hB3&h28&h2B&h48&h4B&h68&h6B&h88&h8B&hA3&HBD&HC3&HE8&HEB&hB3"
FM_chaninfo(4) = "&hB4&h29&h2C&h49&h4C&h69&h6C&h89&h8C&hA4&HBD&HC4&HE9&HEC&hB4"
FM_chaninfo(5) = "&hB5&h2A&h2D&h4A&h4D&h6A&h6D&h8A&h8D&hA5&HBD&HC5&HEA&HED&hB5"
FM_chaninfo(6) = "&hB6&h30&h33&h50&h53&h70&h73&h90&h93&hA6&HBD&HC6&HF0&HF3&hB6"
FM_chaninfo(7) = "&hB7&h31&h34&h51&h54&h71&h74&h91&h94&hA7&HBD&HC7&HF1&HF4&hB7"
FM_chaninfo(8) = "&hB8&h32&h35&h52&h55&h72&h75&h92&h95&hA8&HBD&HC8&HF2&HF5&hB8"

Static Shared as Short TxtMde_FM_BaseAddr, TxtMde_FM_Activated



'__________________________________________________________________________
Sub FBFMlib_SetBaseAddress_SB_210h
  TxtMde_FM_BaseAddr = &h210
End Sub



'__________________________________________________________________________
Sub FBFMlib_SetBaseAddress_SB_220h
  TxtMde_FM_BaseAddr = &h220
End Sub



'__________________________________________________________________________
Sub FBFMlib_SetBaseAddress_SB_230h
  TxtMde_FM_BaseAddr = &h230
End Sub



'__________________________________________________________________________
Sub FBFMlib_SetBaseAddress_SB_240h
  TxtMde_FM_BaseAddr = &h240
End Sub



'__________________________________________________________________________
Sub FBFMlib_SetBaseAddress_SB_250h
  TxtMde_FM_BaseAddr = &h250
End Sub



'__________________________________________________________________________
Sub FBFMlib_SetBaseAddress_SB_260h
  TxtMde_FM_BaseAddr = &h260
End Sub



'__________________________________________________________________________
Sub FBFMlib_SetBaseAddress_SB_270h
  TxtMde_FM_BaseAddr = &h270
End Sub



'__________________________________________________________________________
Sub FBFMlib_SetBaseAddress_SB_280h
  TxtMde_FM_BaseAddr = &h280
End Sub



'__________________________________________________________________________
Function FBFMlib_DetectSB as Long

  Dim as Long a,b,c
  Out TxtMde_FM_BaseAddr + 8, &h4
  Out TxtMde_FM_BaseAddr + 9, &h60
  Out TxtMde_FM_BaseAddr + 8, &h4
  Out TxtMde_FM_BaseAddr + 9, &h80
  b = Inp(&h388)
  Out TxtMde_FM_BaseAddr + 8, &h2
  Out TxtMde_FM_BaseAddr + 9, &hff
  Out TxtMde_FM_BaseAddr + 8, &h4
  Out TxtMde_FM_BaseAddr + 9, &h21
  For x as Long = 0 to 130
    a = Inp(&h388)
  Next
  c = Inp(&h388)
  Out TxtMde_FM_BaseAddr + 8, &h4
  Out TxtMde_FM_BaseAddr + 9, &h60
  Out TxtMde_FM_BaseAddr + 8, &h4
  Out TxtMde_FM_BaseAddr + 9, &h80

  If (b and &he0) = &h0 then
    If (c and &he0) = &hc0 then
      TxtMde_FM_Activated = 1
      Return -1 '<---- SoundBlaster card detected!
    End if
  End if
  TxtMde_FM_Activated = 0
  Return 0 '<---- SoundBlaster not detected.
End Function



'__________________________________________________________________________
Function FBFMlib_AutoDetectSB as Long

  For BAddrCheck as Short = &h210 to &h280 step &h10
    TxtMde_FM_BaseAddr = BAddrCheck
    Dim as Long a,b,c
    Out TxtMde_FM_BaseAddr + 8, &h4
    Out TxtMde_FM_BaseAddr + 9, &h60
    Out TxtMde_FM_BaseAddr + 8, &h4
    Out TxtMde_FM_BaseAddr + 9, &h80
    b = Inp(&h388)
    Out TxtMde_FM_BaseAddr + 8, &h2
    Out TxtMde_FM_BaseAddr + 9, &hff
    Out TxtMde_FM_BaseAddr + 8, &h4
    Out TxtMde_FM_BaseAddr + 9, &h21
    For x as Long = 0 to 130
      a = Inp(&h388)
    Next
    c = Inp(&h388)
    Out TxtMde_FM_BaseAddr + 8, &h4
    Out TxtMde_FM_BaseAddr + 9, &h60
    Out TxtMde_FM_BaseAddr + 8, &h4
    Out TxtMde_FM_BaseAddr + 9, &h80

    If (b and &he0) = &h0 then
      If (c and &he0) = &hc0 then
        TxtMde_FM_Activated = 1
        Return -1 '<---- SoundBlaster card detected!
        Exit Function
      End if
    End if
  Next
  TxtMde_FM_Activated = 0
  Return 0 '<---- SoundBlaster not detected.
End Function



'__________________________________________________________________________
Sub FBFMlib_InitFM
  
  Dim as String sfxSTOP
  Dim as Integer reg, dat, d, in, b, fm_notesetmark, FM_cancelall
  Dim as String regstring, datstring
  If TxtMde_FM_Activated <= 0 then Exit Sub
  
  For FM_cancelall = 0 to 8
    sfxSTOP = "&H00&H00&H00&H00&H00&H00&H00&H00&H00&H00&HC0&H00&H00&H00&H20&H" + Ltrim(Str(FM_cancelall))
    FM_cancelall = Val(Mid(sfxSTOP, 61, 4))
    For in = 1 to 60 step 4
      regstring = Mid(FM_chaninfo(FM_cancelall), in, 4): reg = Val(regstring)
      datstring = Mid(sfxSTOP, in, 4): dat = Val(datstring)
      Out &h388, reg: For d = 1 to 6: b = Inp(&h388): Next
      Out &h389, dat: For d = 1 to 35: b = Inp(&h388): Next
    Next
  Next

  For SetupAllChannels as Byte = 0 to 8
    FBFMlib_PlayFM_RawSFX SetupAllChannels, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0
  Next

End Sub



'__________________________________________________________________________
Sub FBFMlib_PlayFM_RawSFX ( Byval FM_channel                   as Ubyte = 0, _
                            Byval FM_input_Connection          as Ubyte = 0, _
                            Byval FM_input_Note_Frequency      as Ushort = 0, _
                            Byval FM_input_Octave              as Ubyte = 0, _
                            Byval FM_input_Multiplier_Start    as Ubyte = 0, _
                            Byval FM_input_Multiplier_Finish   as Ubyte = 0, _
                            Byval FM_input_Waveform_Start      as Ubyte = 0, _
                            Byval FM_input_Waveform_Finish     as Ubyte = 0, _
                            Byval FM_input_Vibrato_Start       as Ubyte = 0, _
                            Byval FM_input_Vibrato_Finish      as Ubyte = 0, _
                            Byval FM_input_Feedback            as Ubyte = 0, _
                            Byval FM_input_Attack_Start        as Ubyte = 0, _
                            Byval FM_input_Attack_Finish       as Ubyte = 0, _
                            Byval FM_input_Decay_Start         as Ubyte = 0, _
                            Byval FM_input_Decay_Finish        as Ubyte = 0, _
                            Byval FM_input_Sustain_Start       as Ubyte = 0, _
                            Byval FM_input_Sustain_Finish      as Ubyte = 0, _
                            Byval FM_input_Release_Start       as Ubyte = 0, _
                            Byval FM_input_Release_Finish      as Ubyte = 0, _
                            Byval FM_input_Tremole_Start       as Ubyte = 0, _
                            Byval FM_input_Tremole_Finish      as Ubyte = 0, _
                            Byval FM_input_Attenuation_Start   as Ubyte = 0, _
                            Byval FM_input_Attenuation_Finish  as Ubyte = 0 )

  Dim as String sfxPLAY, FMtarget(1 to 16)
  Dim as Integer reg, dat, d, in, b, fm_notesetmark
  Dim as Ubyte FM_procdata(0 to 1)
  Dim as String regstring, datstring
  If TxtMde_FM_Activated <= 0 then Exit Sub

  If FM_channel < 0 then FM_channel = 0
  If FM_channel > 8 then FM_channel = 8
  
  If FM_input_Connection > 1 then FM_input_Connection = 1
  If FM_input_Connection < 0 then FM_input_Connection = 0

  If FM_input_Multiplier_Start > 15 then FM_input_Multiplier_Start = 15
  If FM_input_Multiplier_Start < 0 then FM_input_Multiplier_Start = 0

  If FM_input_Multiplier_Finish > 15 then FM_input_Multiplier_Finish = 15
  If FM_input_Multiplier_Finish < 0 then FM_input_Multiplier_Finish = 0
  
  If FM_input_Waveform_Start > 3 then FM_input_Waveform_Start = 3
  If FM_input_Waveform_Start < 0 then FM_input_Waveform_Start = 0

  If FM_input_Waveform_Finish > 3 then FM_input_Waveform_Finish = 3
  If FM_input_Waveform_Finish < 0 then FM_input_Waveform_Finish = 0
  
  If FM_input_Vibrato_Start > 1 then FM_input_Vibrato_Start = 1
  If FM_input_Vibrato_Start < 0 then FM_input_Vibrato_Start = 0

  If FM_input_Vibrato_Finish > 1 then FM_input_Vibrato_Finish = 1
  If FM_input_Vibrato_Finish < 0 then FM_input_Vibrato_Finish = 0  

  If FM_input_Feedback > 7 then FM_input_Feedback = 7
  If FM_input_Feedback < 0 then FM_input_Feedback = 0

  If FM_input_Attack_Start > 15 then FM_input_Attack_Start = 15
  If FM_input_Attack_Start < 0 then FM_input_Attack_Start = 0

  If FM_input_Attack_Finish > 15 then FM_input_Attack_Finish = 15
  If FM_input_Attack_Finish < 0 then FM_input_Attack_Finish = 0
  
  If FM_input_Sustain_Start > 15 then FM_input_Sustain_Start = 15
  If FM_input_Sustain_Start < 0 then FM_input_Sustain_Start = 0

  If FM_input_Sustain_Finish > 15 then FM_input_Sustain_Finish = 15
  If FM_input_Sustain_Finish < 0 then FM_input_Sustain_Finish = 0
  
  If FM_input_Release_Start > 15 then FM_input_Release_Start = 15
  If FM_input_Release_Start < 0 then FM_input_Release_Start = 0

  If FM_input_Release_Finish > 15 then FM_input_Release_Finish = 15
  If FM_input_Release_Finish < 0 then FM_input_Release_Finish = 0
  
  If FM_input_Decay_Start > 15 then FM_input_Decay_Start = 15
  If FM_input_Decay_Start < 0 then FM_input_Decay_Start = 0

  If FM_input_Decay_Finish > 15 then FM_input_Decay_Finish = 15
  If FM_input_Decay_Finish < 0 then FM_input_Decay_Finish = 0
  
  If FM_input_Note_Frequency > 1023 then FM_input_Note_Frequency = 1023
  If FM_input_Note_Frequency < 0 then FM_input_Note_Frequency = 0
  
  If FM_input_Tremole_Start > 1 then FM_input_Tremole_Start = 1
  If FM_input_Tremole_Start < 0 then FM_input_Tremole_Start = 0

  If FM_input_Tremole_Finish > 1 then FM_input_Tremole_Finish = 1
  If FM_input_Tremole_Finish < 0 then FM_input_Tremole_Finish = 0
  
  If FM_input_Attenuation_Start > 63 then FM_input_Attenuation_Start = 63
  If FM_input_Attenuation_Start < 0 then FM_input_Attenuation_Start = 0
  
  If FM_input_Attenuation_Finish > 63 then FM_input_Attenuation_Finish = 63
  If FM_input_Attenuation_Finish < 0 then FM_input_Attenuation_Finish = 0

  FM_input_Connection += (FM_input_Feedback * 2)

  FM_input_Multiplier_Start += ((FM_input_Tremole_Start * 128) + (FM_input_Vibrato_Start * 64))
  FM_input_Multiplier_Finish += ((FM_input_Tremole_Finish * 128) + (FM_input_Vibrato_Finish * 64))
  
  FM_input_Attack_Start  = ((FM_input_Attack_Start * 16) + FM_input_Decay_Start)
  FM_input_Attack_Finish = ((FM_input_Attack_Finish * 16) + FM_input_Decay_Finish)
  
  FM_input_Sustain_Start  = ((FM_input_Sustain_Start * 16) + FM_input_Release_Start)
  FM_input_Sustain_Finish = ((FM_input_Sustain_Finish * 16) + FM_input_Release_Finish)

  Select Case FM_input_Note_Frequency
    Case is < 256
      fm_notesetmark = 3
      Exit Select
    Case 256 to 511
      FM_input_Note_Frequency -= 256
      fm_notesetmark = 2
      Exit Select
    Case 512 to 767
      FM_input_Note_Frequency -= 512
      fm_notesetmark = 1
      Exit Select
    Case is > 767
      FM_input_Note_Frequency -= 768
      fm_notesetmark = 0
      Exit Select
  End Select
  
  If FM_input_Octave > 7 then FM_input_Octave = 7
  If FM_input_Octave < 0 then FM_input_Octave = 0

  FM_input_Octave = ((FM_input_Octave * 4) + (35 - fm_notesetmark))

  If FM_procdata(0) < 16 then
    FMtarget(1) = "&h0" + Ltrim(Str(Hex(FM_procdata(0))))
  else
    FMtarget(1) = "&h" + Ltrim(Str(Hex(FM_procdata(0))))
  End if
  
  If FM_input_Multiplier_Start < 16 then
    FMtarget(2) = "&h0" + Ltrim(Str(Hex(FM_input_Multiplier_Start)))
  else
    FMtarget(2) = "&h" + Ltrim(Str(Hex(FM_input_Multiplier_Start)))
  End if

  If FM_input_Multiplier_Finish < 16 then
    FMtarget(3) = "&h0" + Ltrim(Str(Hex(FM_input_Multiplier_Finish)))
  else
    FMtarget(3) = "&h" + Ltrim(Str(Hex(FM_input_Multiplier_Finish)))
  End if

  If FM_input_Attenuation_Start < 16 then
    FMtarget(4) = "&h0" + Ltrim(Str(Hex(FM_input_Attenuation_Start)))
  else
    FMtarget(4) = "&h" + Ltrim(Str(Hex(FM_input_Attenuation_Start)))
  End if

  If FM_input_Attenuation_Finish < 16 then
    FMtarget(5) = "&h0" + Ltrim(Str(Hex(FM_input_Attenuation_Finish)))
  else
    FMtarget(5) = "&h" + Ltrim(Str(Hex(FM_input_Attenuation_Finish)))
  End if

  If FM_input_Attack_Start < 16 then
    FMtarget(6) = "&h0" + Ltrim(Str(Hex(FM_input_Attack_Start)))
  else
    FMtarget(6) = "&h" + Ltrim(Str(Hex(FM_input_Attack_Start)))
  End if

  If FM_input_Attack_Finish < 16 then
    FMtarget(7) = "&h0" + Ltrim(Str(Hex(FM_input_Attack_Finish)))
  else
    FMtarget(7) = "&h" + Ltrim(Str(Hex(FM_input_Attack_Finish)))
  End if

  If FM_input_Sustain_Start < 16 then
    FMtarget(8) = "&h0" + Ltrim(Str(Hex(FM_input_Sustain_Start)))
  else
    FMtarget(8) = "&h" + Ltrim(Str(Hex(FM_input_Sustain_Start)))
  End if

  If FM_input_Sustain_Finish < 16 then
    FMtarget(9) = "&h0" + Ltrim(Str(Hex(FM_input_Sustain_Finish)))
  else
    FMtarget(9) = "&h" + Ltrim(Str(Hex(FM_input_Sustain_Finish)))
  End if

  If FM_input_Note_Frequency < 16 then
    FMtarget(10) = "&h0" + Ltrim(Str(Hex(FM_input_Note_Frequency)))
  else
    FMtarget(10) = "&h" + Ltrim(Str(Hex(FM_input_Note_Frequency)))
  End if

  If FM_procdata(1) < 16 then
    FMtarget(11) = "&h0" + Ltrim(Str(Hex(FM_procdata(1))))
  else
    FMtarget(11) = "&h" + Ltrim(Str(Hex(FM_procdata(1))))
  End if
  
  If FM_input_Connection < 16 then
    FMtarget(12) = "&h0" + Ltrim(Str(Hex(FM_input_Connection)))
  else
    FMtarget(12) = "&h" + Ltrim(Str(Hex(FM_input_Connection)))
  End if

  If FM_input_Waveform_Start < 16 then
    FMtarget(13) = "&h0" + Ltrim(Str(Hex(FM_input_Waveform_Start)))
  else
    FMtarget(13) = "&h" + Ltrim(Str(Hex(FM_input_Waveform_Start)))
  End if

  If FM_input_Waveform_Finish < 16 then
    FMtarget(14) = "&h0" + Ltrim(Str(Hex(FM_input_Waveform_Finish)))
  else
    FMtarget(14) = "&h" + Ltrim(Str(Hex(FM_input_Waveform_Finish)))
  End if

  If FM_input_Octave < 16 then
    FMtarget(15) = "&h0" + Ltrim(Str(Hex(FM_input_Octave)))
  else
    FMtarget(15) = "&h" + Ltrim(Str(Hex(FM_input_Octave)))
  End if
  
  FMtarget(16) = "&h" + Ltrim(Str(Hex(FM_channel)))
  
  For FM_SoundDecode as Integer = 1 to 16 step 1
    sfxPLAY += FMtarget(FM_SoundDecode)
  Next
  
  FM_channel = Val(Mid(sfxPLAY, 61, 4))
  For in = 1 to 60 step 4
    regstring = Mid(FM_chaninfo(FM_channel), in, 4): reg = Val(regstring)
    datstring = Mid(sfxPLAY, in, 4): dat = Val(datstring)
    Out &h388, reg: For d = 1 to 6: b = Inp(&h388): Next
    Out &h389, dat: For d = 1 to 35: b = Inp(&h388): Next
  Next

End Sub



'__________________________________________________________________________
Sub FBFMlib_PlayFM_Note ( Byval FM_channel                 as Ubyte = 0, _
                          Byval FM_input_Note              as String = "C", _
                          Byval FM_input_Octave            as Ubyte = 4, _
                          Byval FM_input_Volume            as Ubyte = 63, _
                          Byval FM_input_Connection        as Ubyte = 0, _
                          Byval FM_input_Multiplier_Start  as Ubyte = 0, _
                          Byval FM_input_Multiplier_Finish as Ubyte = 0, _
                          Byval FM_input_Waveform_Start    as Ubyte = 0, _
                          Byval FM_input_Waveform_Finish   as Ubyte = 0, _
                          Byval FM_input_Vibrato_Start     as Ubyte = 0, _
                          Byval FM_input_Vibrato_Finish    as Ubyte = 0, _
                          Byval FM_input_Feedback          as Ubyte = 0, _
                          Byval FM_input_Attack_Start      as Ubyte = 7, _
                          Byval FM_input_Attack_Finish     as Ubyte = 8, _
                          Byval FM_input_Decay_Start       as Ubyte = 10, _
                          Byval FM_input_Decay_Finish      as Ubyte = 10, _
                          Byval FM_input_Sustain_Start     as Ubyte = 0, _
                          Byval FM_input_Sustain_Finish    as Ubyte = 0, _
                          Byval FM_input_Release_Start     as Ubyte = 4, _
                          Byval FM_input_Release_Finish    as Ubyte = 4, _
                          Byval FM_input_Tremole_Start     as Ubyte = 0, _
                          Byval FM_input_Tremole_Finish    as Ubyte = 0, _
                          Byval FM_input_Attenuation       as Ubyte = 63 )

  Dim as Ushort FM_input_Note_Result
  If TxtMde_FM_Activated <= 0 then Exit Sub

  If FM_input_Volume < 0  then FM_input_Volume = 0
  If FM_input_Volume > 63 then FM_input_Volume = 63

  If FM_input_Note = "C"  or FM_input_Note = "c"  then FM_input_Note_Result = 344
  If FM_input_Note = "C#" or FM_input_Note = "c#" then FM_input_Note_Result = 368
  If FM_input_Note = "D"  or FM_input_Note = "d"  then FM_input_Note_Result = 384
  If FM_input_Note = "D#" or FM_input_Note = "d#" then FM_input_Note_Result = 408
  If FM_input_Note = "E"  or FM_input_Note = "e"  then FM_input_Note_Result = 432
  If FM_input_Note = "F"  or FM_input_Note = "f"  then FM_input_Note_Result = 456
  If FM_input_Note = "F#" or FM_input_Note = "f#" then FM_input_Note_Result = 488
  If FM_input_Note = "G"  or FM_input_Note = "g"  then FM_input_Note_Result = 512
  If FM_input_Note = "G#" or FM_input_Note = "g#" then FM_input_Note_Result = 544
  If FM_input_Note = "A"  or FM_input_Note = "a"  then FM_input_Note_Result = 584
  If FM_input_Note = "A#" or FM_input_Note = "a#" then FM_input_Note_Result = 616
  If FM_input_Note = "B"  or FM_input_Note = "b"  then FM_input_Note_Result = 648

  FBFMlib_PlayFM_RawSFX FM_channel, _
                        FM_input_Connection, _
                        FM_input_Note_Result, _
                        FM_input_Octave, _
                        FM_input_Multiplier_Start, _
                        FM_input_Multiplier_Finish, _
                        FM_input_Waveform_Start, _
                        FM_input_Waveform_Finish, _
                        FM_input_Vibrato_Start, _
                        FM_input_Vibrato_Finish, _
                        FM_input_Feedback, _
                        FM_input_Attack_Start, _
                        FM_input_Attack_Finish, _
                        FM_input_Decay_Start, _
                        FM_input_Decay_Finish, _
                        FM_input_Sustain_Start, _
                        FM_input_Sustain_Finish, _
                        FM_input_Release_Start, _
                        FM_input_Release_Finish, _
                        FM_input_Tremole_Start, _
                        FM_input_Tremole_Finish, _
                        FM_input_Attenuation, _
                        (63 - FM_input_Volume)

End Sub



'__________________________________________________________________________
Sub FBFMlib_PlayFM_Sine ( Byval FM_channel             as Ubyte = 0, _
                          Byval FM_input_Note          as String = "C", _
                          Byval FM_input_Octave        as Ubyte = 4, _
                          Byval FM_input_Volume        as Ubyte = 63, _
                          Byval FM_input_FadeIn_Level  as Ubyte = 15, _
                          Byval FM_input_FadeOut_Level as Ubyte = 0 )

  Dim as Ushort FM_input_Note_Result

  If FM_input_Volume < 0  then FM_input_Volume = 0
  If FM_input_Volume > 63 then FM_input_Volume = 63
  
  If FM_input_FadeIn_Level < 0  then FM_input_FadeIn_Level = 0
  If FM_input_FadeIn_Level > 15 then FM_input_FadeIn_Level = 15

  If FM_input_FadeOut_Level < 0  then FM_input_FadeOut_Level = 0
  If FM_input_FadeOut_Level > 15 then FM_input_FadeOut_Level = 15

  If FM_input_Note = "C"  or FM_input_Note = "c"  then FM_input_Note_Result = 344
  If FM_input_Note = "C#" or FM_input_Note = "c#" then FM_input_Note_Result = 368
  If FM_input_Note = "D"  or FM_input_Note = "d"  then FM_input_Note_Result = 384
  If FM_input_Note = "D#" or FM_input_Note = "d#" then FM_input_Note_Result = 408
  If FM_input_Note = "E"  or FM_input_Note = "e"  then FM_input_Note_Result = 432
  If FM_input_Note = "F"  or FM_input_Note = "f"  then FM_input_Note_Result = 456
  If FM_input_Note = "F#" or FM_input_Note = "f#" then FM_input_Note_Result = 488
  If FM_input_Note = "G"  or FM_input_Note = "g"  then FM_input_Note_Result = 512
  If FM_input_Note = "G#" or FM_input_Note = "g#" then FM_input_Note_Result = 544
  If FM_input_Note = "A"  or FM_input_Note = "a"  then FM_input_Note_Result = 584
  If FM_input_Note = "A#" or FM_input_Note = "a#" then FM_input_Note_Result = 616
  If FM_input_Note = "B"  or FM_input_Note = "b"  then FM_input_Note_Result = 648

  FBFMlib_PlayFM_RawSFX FM_channel, 0, FM_input_Note_Result, FM_input_Octave, _
                        2, 2, 0, 0, 0, 0, 0, 15, FM_input_FadeIn_Level, 0, 0, 0, 0, 0, _
                        FM_input_FadeOut_Level, 0, 0, 63, (63 - FM_input_Volume)

End Sub



'__________________________________________________________________________
Sub FBFMlib_PlayFM_SemiSine ( Byval FM_channel             as Ubyte = 0, _
                              Byval FM_input_Note          as String = "C", _
                              Byval FM_input_Octave        as Ubyte = 4, _
                              Byval FM_input_Volume        as Ubyte = 63, _
                              Byval FM_input_FadeIn_Level  as Ubyte = 15, _
                              Byval FM_input_FadeOut_Level as Ubyte = 0 )

  Dim as Ushort FM_input_Note_Result

  If FM_input_Volume < 0  then FM_input_Volume = 0
  If FM_input_Volume > 63 then FM_input_Volume = 63
  
  If FM_input_FadeIn_Level < 0  then FM_input_FadeIn_Level = 0
  If FM_input_FadeIn_Level > 15 then FM_input_FadeIn_Level = 15

  If FM_input_FadeOut_Level < 0  then FM_input_FadeOut_Level = 0
  If FM_input_FadeOut_Level > 15 then FM_input_FadeOut_Level = 15

  If FM_input_Note = "C"  or FM_input_Note = "c"  then FM_input_Note_Result = 344
  If FM_input_Note = "C#" or FM_input_Note = "c#" then FM_input_Note_Result = 368
  If FM_input_Note = "D"  or FM_input_Note = "d"  then FM_input_Note_Result = 384
  If FM_input_Note = "D#" or FM_input_Note = "d#" then FM_input_Note_Result = 408
  If FM_input_Note = "E"  or FM_input_Note = "e"  then FM_input_Note_Result = 432
  If FM_input_Note = "F"  or FM_input_Note = "f"  then FM_input_Note_Result = 456
  If FM_input_Note = "F#" or FM_input_Note = "f#" then FM_input_Note_Result = 488
  If FM_input_Note = "G"  or FM_input_Note = "g"  then FM_input_Note_Result = 512
  If FM_input_Note = "G#" or FM_input_Note = "g#" then FM_input_Note_Result = 544
  If FM_input_Note = "A"  or FM_input_Note = "a"  then FM_input_Note_Result = 584
  If FM_input_Note = "A#" or FM_input_Note = "a#" then FM_input_Note_Result = 616
  If FM_input_Note = "B"  or FM_input_Note = "b"  then FM_input_Note_Result = 648

  FBFMlib_PlayFM_RawSFX FM_channel, 0, FM_input_Note_Result, FM_input_Octave, _
                        4, 2, 0, 0, 0, 0, 7, 15, FM_input_FadeIn_Level, 0, 0, 0, 0, 0, _
                        FM_input_FadeOut_Level, 0, 0, 35, (63 - FM_input_Volume)

End Sub



'__________________________________________________________________________
Sub FBFMlib_PlayFM_SawCurve ( Byval FM_channel             as Ubyte = 0, _
                              Byval FM_input_Note          as String = "C", _
                              Byval FM_input_Octave        as Ubyte = 4, _
                              Byval FM_input_Volume        as Ubyte = 63, _
                              Byval FM_input_FadeIn_Level  as Ubyte = 15, _
                              Byval FM_input_FadeOut_Level as Ubyte = 0 )

  Dim as Ushort FM_input_Note_Result

  If FM_input_Volume < 0  then FM_input_Volume = 0
  If FM_input_Volume > 63 then FM_input_Volume = 63
  
  If FM_input_FadeIn_Level < 0  then FM_input_FadeIn_Level = 0
  If FM_input_FadeIn_Level > 15 then FM_input_FadeIn_Level = 15

  If FM_input_FadeOut_Level < 0  then FM_input_FadeOut_Level = 0
  If FM_input_FadeOut_Level > 15 then FM_input_FadeOut_Level = 15

  If FM_input_Note = "C"  or FM_input_Note = "c"  then FM_input_Note_Result = 344
  If FM_input_Note = "C#" or FM_input_Note = "c#" then FM_input_Note_Result = 368
  If FM_input_Note = "D"  or FM_input_Note = "d"  then FM_input_Note_Result = 384
  If FM_input_Note = "D#" or FM_input_Note = "d#" then FM_input_Note_Result = 408
  If FM_input_Note = "E"  or FM_input_Note = "e"  then FM_input_Note_Result = 432
  If FM_input_Note = "F"  or FM_input_Note = "f"  then FM_input_Note_Result = 456
  If FM_input_Note = "F#" or FM_input_Note = "f#" then FM_input_Note_Result = 488
  If FM_input_Note = "G"  or FM_input_Note = "g"  then FM_input_Note_Result = 512
  If FM_input_Note = "G#" or FM_input_Note = "g#" then FM_input_Note_Result = 544
  If FM_input_Note = "A"  or FM_input_Note = "a"  then FM_input_Note_Result = 584
  If FM_input_Note = "A#" or FM_input_Note = "a#" then FM_input_Note_Result = 616
  If FM_input_Note = "B"  or FM_input_Note = "b"  then FM_input_Note_Result = 648

  FBFMlib_PlayFM_RawSFX FM_channel, 0, FM_input_Note_Result, FM_input_Octave, _
                        2, 2, 0, 0, 0, 0, 7, 15, FM_input_FadeIn_Level, 0, 0, 0, 0, 0, _
                        FM_input_FadeOut_Level, 0, 0, 24, (63 - FM_input_Volume)

End Sub



'__________________________________________________________________________
Sub FBFMlib_PlayFM_Pulse ( Byval FM_channel             as Ubyte = 0, _
                           Byval FM_input_Note          as String = "C", _
                           Byval FM_input_Octave        as Ubyte = 4, _
                           Byval FM_input_Volume        as Ubyte = 63, _
                           Byval FM_input_FadeIn_Level  as Ubyte = 15, _
                           Byval FM_input_FadeOut_Level as Ubyte = 0 )

  Dim as Ushort FM_input_Note_Result

  If FM_input_Volume < 0  then FM_input_Volume = 0
  If FM_input_Volume > 63 then FM_input_Volume = 63
  
  If FM_input_FadeIn_Level < 0  then FM_input_FadeIn_Level = 0
  If FM_input_FadeIn_Level > 15 then FM_input_FadeIn_Level = 15

  If FM_input_FadeOut_Level < 0  then FM_input_FadeOut_Level = 0
  If FM_input_FadeOut_Level > 15 then FM_input_FadeOut_Level = 15

  If FM_input_Note = "C"  or FM_input_Note = "c"  then FM_input_Note_Result = 344
  If FM_input_Note = "C#" or FM_input_Note = "c#" then FM_input_Note_Result = 368
  If FM_input_Note = "D"  or FM_input_Note = "d"  then FM_input_Note_Result = 384
  If FM_input_Note = "D#" or FM_input_Note = "d#" then FM_input_Note_Result = 408
  If FM_input_Note = "E"  or FM_input_Note = "e"  then FM_input_Note_Result = 432
  If FM_input_Note = "F"  or FM_input_Note = "f"  then FM_input_Note_Result = 456
  If FM_input_Note = "F#" or FM_input_Note = "f#" then FM_input_Note_Result = 488
  If FM_input_Note = "G"  or FM_input_Note = "g"  then FM_input_Note_Result = 512
  If FM_input_Note = "G#" or FM_input_Note = "g#" then FM_input_Note_Result = 544
  If FM_input_Note = "A"  or FM_input_Note = "a"  then FM_input_Note_Result = 584
  If FM_input_Note = "A#" or FM_input_Note = "a#" then FM_input_Note_Result = 616
  If FM_input_Note = "B"  or FM_input_Note = "b"  then FM_input_Note_Result = 648

  FBFMlib_PlayFM_RawSFX FM_channel, 0, FM_input_Note_Result, FM_input_Octave, _
                        4, 2, 0, 0, 0, 0, 7, 15, FM_input_FadeIn_Level, 0, 0, 0, 0, 0, _
                        FM_input_FadeOut_Level, 0, 0, 23, (63 - FM_input_Volume)

End Sub



'__________________________________________________________________________
Sub FBFMlib_PlayFM_TinyTone ( Byval FM_channel             as Ubyte = 0, _
                              Byval FM_input_Note          as String = "C", _
                              Byval FM_input_Octave        as Ubyte = 4, _
                              Byval FM_input_Volume        as Ubyte = 63, _
                              Byval FM_input_FadeIn_Level  as Ubyte = 15, _
                              Byval FM_input_FadeOut_Level as Ubyte = 0 )

  Dim as Ushort FM_input_Note_Result

  If FM_input_Volume < 0  then FM_input_Volume = 0
  If FM_input_Volume > 63 then FM_input_Volume = 63
  
  If FM_input_FadeIn_Level < 0  then FM_input_FadeIn_Level = 0
  If FM_input_FadeIn_Level > 15 then FM_input_FadeIn_Level = 15

  If FM_input_FadeOut_Level < 0  then FM_input_FadeOut_Level = 0
  If FM_input_FadeOut_Level > 15 then FM_input_FadeOut_Level = 15

  If FM_input_Note = "C"  or FM_input_Note = "c"  then FM_input_Note_Result = 344
  If FM_input_Note = "C#" or FM_input_Note = "c#" then FM_input_Note_Result = 368
  If FM_input_Note = "D"  or FM_input_Note = "d"  then FM_input_Note_Result = 384
  If FM_input_Note = "D#" or FM_input_Note = "d#" then FM_input_Note_Result = 408
  If FM_input_Note = "E"  or FM_input_Note = "e"  then FM_input_Note_Result = 432
  If FM_input_Note = "F"  or FM_input_Note = "f"  then FM_input_Note_Result = 456
  If FM_input_Note = "F#" or FM_input_Note = "f#" then FM_input_Note_Result = 488
  If FM_input_Note = "G"  or FM_input_Note = "g"  then FM_input_Note_Result = 512
  If FM_input_Note = "G#" or FM_input_Note = "g#" then FM_input_Note_Result = 544
  If FM_input_Note = "A"  or FM_input_Note = "a"  then FM_input_Note_Result = 584
  If FM_input_Note = "A#" or FM_input_Note = "a#" then FM_input_Note_Result = 616
  If FM_input_Note = "B"  or FM_input_Note = "b"  then FM_input_Note_Result = 648

  FBFMlib_PlayFM_RawSFX FM_channel, 0, FM_input_Note_Result, FM_input_Octave, _
                        4, 2, 0, 0, 0, 2, 0, 15, FM_input_FadeIn_Level, 0, 0, 0, 0, 0, _
                        FM_input_FadeOut_Level, 0, 0, 4, (63 - FM_input_Volume)

End Sub



'__________________________________________________________________________
Sub FBFMlib_PlayFM_WildTone ( Byval FM_channel             as Ubyte = 0, _
                              Byval FM_input_Note          as String = "C", _
                              Byval FM_input_Octave        as Ubyte = 4, _
                              Byval FM_input_Volume        as Ubyte = 63, _
                              Byval FM_input_FadeIn_Level  as Ubyte = 15, _
                              Byval FM_input_FadeOut_Level as Ubyte = 0 )

  Dim as Ushort FM_input_Note_Result

  If FM_input_Volume < 0  then FM_input_Volume = 0
  If FM_input_Volume > 63 then FM_input_Volume = 63
  
  If FM_input_FadeIn_Level < 0  then FM_input_FadeIn_Level = 0
  If FM_input_FadeIn_Level > 15 then FM_input_FadeIn_Level = 15

  If FM_input_FadeOut_Level < 0  then FM_input_FadeOut_Level = 0
  If FM_input_FadeOut_Level > 15 then FM_input_FadeOut_Level = 15

  If FM_input_Note = "C"  or FM_input_Note = "c"  then FM_input_Note_Result = 344
  If FM_input_Note = "C#" or FM_input_Note = "c#" then FM_input_Note_Result = 368
  If FM_input_Note = "D"  or FM_input_Note = "d"  then FM_input_Note_Result = 384
  If FM_input_Note = "D#" or FM_input_Note = "d#" then FM_input_Note_Result = 408
  If FM_input_Note = "E"  or FM_input_Note = "e"  then FM_input_Note_Result = 432
  If FM_input_Note = "F"  or FM_input_Note = "f"  then FM_input_Note_Result = 456
  If FM_input_Note = "F#" or FM_input_Note = "f#" then FM_input_Note_Result = 488
  If FM_input_Note = "G"  or FM_input_Note = "g"  then FM_input_Note_Result = 512
  If FM_input_Note = "G#" or FM_input_Note = "g#" then FM_input_Note_Result = 544
  If FM_input_Note = "A"  or FM_input_Note = "a"  then FM_input_Note_Result = 584
  If FM_input_Note = "A#" or FM_input_Note = "a#" then FM_input_Note_Result = 616
  If FM_input_Note = "B"  or FM_input_Note = "b"  then FM_input_Note_Result = 648

  FBFMlib_PlayFM_RawSFX FM_channel, 0, FM_input_Note_Result, FM_input_Octave, _
                        6, 8, 0, 0, 0, 0, 2, 15, FM_input_FadeIn_Level, 0, 0, 0, 0, 0, _
                        FM_input_FadeOut_Level, 0, 0, 3, (63 - FM_input_Volume)

End Sub



'__________________________________________________________________________
Sub FBFMlib_PlayFM_SoftTone ( Byval FM_channel             as Ubyte = 0, _
                              Byval FM_input_Note          as String = "C", _
                              Byval FM_input_Octave        as Ubyte = 4, _
                              Byval FM_input_Volume        as Ubyte = 63, _
                              Byval FM_input_FadeIn_Level  as Ubyte = 15, _
                              Byval FM_input_FadeOut_Level as Ubyte = 0 )

  Dim as Ushort FM_input_Note_Result

  If FM_input_Volume < 0  then FM_input_Volume = 0
  If FM_input_Volume > 63 then FM_input_Volume = 63
  
  If FM_input_FadeIn_Level < 0  then FM_input_FadeIn_Level = 0
  If FM_input_FadeIn_Level > 15 then FM_input_FadeIn_Level = 15

  If FM_input_FadeOut_Level < 0  then FM_input_FadeOut_Level = 0
  If FM_input_FadeOut_Level > 15 then FM_input_FadeOut_Level = 15

  If FM_input_Note = "C"  or FM_input_Note = "c"  then FM_input_Note_Result = 344
  If FM_input_Note = "C#" or FM_input_Note = "c#" then FM_input_Note_Result = 368
  If FM_input_Note = "D"  or FM_input_Note = "d"  then FM_input_Note_Result = 384
  If FM_input_Note = "D#" or FM_input_Note = "d#" then FM_input_Note_Result = 408
  If FM_input_Note = "E"  or FM_input_Note = "e"  then FM_input_Note_Result = 432
  If FM_input_Note = "F"  or FM_input_Note = "f"  then FM_input_Note_Result = 456
  If FM_input_Note = "F#" or FM_input_Note = "f#" then FM_input_Note_Result = 488
  If FM_input_Note = "G"  or FM_input_Note = "g"  then FM_input_Note_Result = 512
  If FM_input_Note = "G#" or FM_input_Note = "g#" then FM_input_Note_Result = 544
  If FM_input_Note = "A"  or FM_input_Note = "a"  then FM_input_Note_Result = 584
  If FM_input_Note = "A#" or FM_input_Note = "a#" then FM_input_Note_Result = 616
  If FM_input_Note = "B"  or FM_input_Note = "b"  then FM_input_Note_Result = 648

  FBFMlib_PlayFM_RawSFX FM_channel, 0, FM_input_Note_Result, FM_input_Octave, _
                        5, 2, 0, 0, 0, 0, 2, 15, FM_input_FadeIn_Level, 0, 0, 0, 0, 0, _
                        FM_input_FadeOut_Level, 0, 0, 52, (63 - FM_input_Volume)

End Sub



'__________________________________________________________________________
Sub FBFMlib_PlayFM_Boom ( Byval FM_channel              as Ubyte = 0, _
                          Byval FM_input_Volume         as Ubyte = 63, _
                          Byval FM_input_FadeIn_Level   as Ubyte = 15, _
                          Byval FM_input_FadeOut_Level  as Ubyte = 4 )

  If FM_input_Volume < 0  then FM_input_Volume = 0
  If FM_input_Volume > 63 then FM_input_Volume = 63
  
  If FM_input_FadeIn_Level < 0  then FM_input_FadeIn_Level = 0
  If FM_input_FadeIn_Level > 15 then FM_input_FadeIn_Level = 15

  If FM_input_FadeOut_Level < 0  then FM_input_FadeOut_Level = 0
  If FM_input_FadeOut_Level > 15 then FM_input_FadeOut_Level = 15

  FBFMlib_PlayFM_RawSFX FM_channel, 0, 600, 1, 0, 0, 0, 0, 0, 0, 6, 15, _
                        FM_input_FadeIn_Level, 0, 0, 0, 0, 0, FM_input_FadeOut_Level, _
                        0, 0, 0, (63 - FM_input_Volume)

End Sub



'__________________________________________________________________________
Sub FBFMlib_PlayFM_Static ( Byval FM_channel              as Ubyte = 0, _
                            Byval FM_input_Volume         as Ubyte = 63, _
                            Byval FM_input_FadeIn_Level   as Ubyte = 15, _
                            Byval FM_input_FadeOut_Level  as Ubyte = 0 )

  If FM_input_Volume < 0  then FM_input_Volume = 0
  If FM_input_Volume > 63 then FM_input_Volume = 63
  
  If FM_input_FadeIn_Level < 0  then FM_input_FadeIn_Level = 0
  If FM_input_FadeIn_Level > 15 then FM_input_FadeIn_Level = 15

  If FM_input_FadeOut_Level < 0  then FM_input_FadeOut_Level = 0
  If FM_input_FadeOut_Level > 15 then FM_input_FadeOut_Level = 15

  FBFMlib_PlayFM_RawSFX FM_channel, 0, 640, 2, 8, 0, 0, 3, 0, 0, 7, 15, _
                        FM_input_FadeIn_Level, 0, 0, 0, 0, 0, FM_input_FadeOut_Level, _
                        0, 0, 2, (63 - FM_input_Volume)

End Sub



'__________________________________________________________________________
Sub FBFMlib_PlayFM_Noise ( Byval FM_channel              as Ubyte = 0, _
                           Byval FM_input_NoiseFrequency as Ushort = 640, _
                           Byval FM_input_Volume         as Ubyte = 63, _
                           Byval FM_input_FadeIn_Level   as Ubyte = 15, _
                           Byval FM_input_FadeOut_Level  as Ubyte = 0, _
                           Byval FM_input_WaveForm_from  as Ushort = 0, _
                           Byval FM_input_WaveForm_to    as Ushort = 0 )

  If FM_input_Volume < 0  then FM_input_Volume = 0
  If FM_input_Volume > 63 then FM_input_Volume = 63
  
  If FM_input_FadeOut_Level < 0  then FM_input_FadeOut_Level = 0
  If FM_input_FadeOut_Level > 15 then FM_input_FadeOut_Level = 15

  If FM_input_NoiseFrequency < 0    then FM_input_NoiseFrequency = 0
  If FM_input_NoiseFrequency > 1023 then FM_input_NoiseFrequency = 1023

  If FM_input_WaveForm_from < 0 then FM_input_WaveForm_from = 0
  If FM_input_WaveForm_from > 3 then FM_input_WaveForm_from = 3

  If FM_input_WaveForm_to < 0 then FM_input_WaveForm_to = 0
  If FM_input_WaveForm_to > 3 then FM_input_WaveForm_to = 3

  FBFMlib_PlayFM_RawSFX FM_channel, 0, FM_input_NoiseFrequency, 6, _
                        4, 1, FM_input_WaveForm_from, FM_input_WaveForm_to, 0, 0, 6, _
                        15, FM_input_FadeIn_Level, 0, 0, 0, 0, 0, FM_input_FadeOut_Level, _
                        0, 0, 0, (63 - FM_input_Volume)

End Sub



'__________________________________________________________________________
Sub FBFMlib_PlayFM_Racecar ( Byval FM_channel               as Ubyte = 0, _
                             Byval FM_input_EngineFrequency as Ushort = 0, _
                             Byval FM_input_Volume          as Ubyte = 63, _
                             Byval FM_input_FadeIn_Level    as Ubyte = 15, _
                             Byval FM_input_FadeOut_Level   as Ubyte = 0 )

  If FM_input_Volume < 0  then FM_input_Volume = 0
  If FM_input_Volume > 63 then FM_input_Volume = 63

  If FM_input_FadeIn_Level < 0  then FM_input_FadeIn_Level = 0
  If FM_input_FadeIn_Level > 15 then FM_input_FadeIn_Level = 15

  If FM_input_FadeOut_Level < 0  then FM_input_FadeOut_Level = 0
  If FM_input_FadeOut_Level > 15 then FM_input_FadeOut_Level = 15

  If FM_input_EngineFrequency < 0    then FM_input_EngineFrequency = 0
  If FM_input_EngineFrequency > 1023 then FM_input_EngineFrequency = 1023

  FBFMlib_PlayFM_RawSFX FM_channel, 0, FM_input_EngineFrequency, 4, _
                        0, 0, 0, 0, 0, 0, 5, 15, FM_input_FadeIn_Level, 0, 0, 0, 0, 0, FM_input_FadeOut_Level, _
                        0, 4, 12, (63 - FM_input_Volume)

End Sub



'__________________________________________________________________________
Sub FBFMlib_PlayFM_Motorcycle ( Byval FM_channel               as Ubyte = 0, _
                                Byval FM_input_EngineFrequency as Ushort = 0, _
                                Byval FM_input_Volume          as Ubyte = 63, _
                                Byval FM_input_FadeIn_Level    as Ubyte = 15, _
                                Byval FM_input_FadeOut_Level   as Ubyte = 0 )

  If FM_input_Volume < 0  then FM_input_Volume = 0
  If FM_input_Volume > 63 then FM_input_Volume = 63

  If FM_input_FadeIn_Level < 0  then FM_input_FadeIn_Level = 0
  If FM_input_FadeIn_Level > 15 then FM_input_FadeIn_Level = 15

  If FM_input_FadeOut_Level < 0  then FM_input_FadeOut_Level = 0
  If FM_input_FadeOut_Level > 15 then FM_input_FadeOut_Level = 15

  If FM_input_EngineFrequency < 0    then FM_input_EngineFrequency = 0
  If FM_input_EngineFrequency > 1023 then FM_input_EngineFrequency = 1023

  FBFMlib_PlayFM_RawSFX FM_channel, 0, FM_input_EngineFrequency, 4, _
                        0, 0, 0, 0, 0, 0, 5, 15, FM_input_FadeIn_Level, 0, 0, 15, 0, 0, FM_input_FadeOut_Level, _
                        0, 0, 5, (63 - FM_input_Volume)

End Sub



'__________________________________________________________________________
Sub FBFMlib_PlayFM_Helicopter ( Byval FM_channel                as Ubyte = 0, _
                                Byval FM_input_ChopperFrequency as Ushort = 640, _
                                Byval FM_input_Volume           as Ubyte = 63, _
                                Byval FM_input_FadeIn_Level     as Ubyte = 15, _
                                Byval FM_input_FadeOut_Level    as Ubyte = 0 )

  If FM_input_Volume < 0  then FM_input_Volume = 0
  If FM_input_Volume > 63 then FM_input_Volume = 63

  If FM_input_FadeIn_Level < 0  then FM_input_FadeIn_Level = 0
  If FM_input_FadeIn_Level > 15 then FM_input_FadeIn_Level = 15

  If FM_input_FadeOut_Level < 0  then FM_input_FadeOut_Level = 0
  If FM_input_FadeOut_Level > 15 then FM_input_FadeOut_Level = 15

  If FM_input_ChopperFrequency < 0    then FM_input_ChopperFrequency = 0
  If FM_input_ChopperFrequency > 1023 then FM_input_ChopperFrequency = 1023

  FBFMlib_PlayFM_RawSFX FM_channel, 0, FM_input_ChopperFrequency, 0, _
                        0, 8, 0, 2, 0, 0, 5, 15, FM_input_FadeIn_Level, 0, 0, 0, 0, 0, FM_input_FadeOut_Level, _
                        0, 0, 0, (63 - FM_input_Volume)

End Sub



'__________________________________________________________________________
Sub FBFMlib_PlayFM_Biplane ( Byval FM_channel                  as Ubyte = 0, _
                             Byval FM_input_PropellerFrequency as Ushort = 0, _
                             Byval FM_input_Volume             as Ubyte = 63, _
                             Byval FM_input_FadeIn_Level       as Ubyte = 15, _
                             Byval FM_input_FadeOut_Level      as Ubyte = 0 )

  If FM_input_Volume < 0  then FM_input_Volume = 0
  If FM_input_Volume > 63 then FM_input_Volume = 63

  If FM_input_FadeIn_Level < 0  then FM_input_FadeIn_Level = 0
  If FM_input_FadeIn_Level > 15 then FM_input_FadeIn_Level = 15

  If FM_input_FadeOut_Level < 0  then FM_input_FadeOut_Level = 0
  If FM_input_FadeOut_Level > 15 then FM_input_FadeOut_Level = 15

  If FM_input_PropellerFrequency < 0    then FM_input_PropellerFrequency = 0
  If FM_input_PropellerFrequency > 1000 then FM_input_PropellerFrequency = 1000

  FBFMlib_PlayFM_RawSFX FM_channel, 0, FM_input_PropellerFrequency + 23, 3, _
                        0, 0, 0, 0, 0, 0, 6, 15, FM_input_FadeIn_Level, 0, 0, 15, 0, 0, FM_input_FadeOut_Level, _
                        0, 0, 6, (63 - FM_input_Volume)

End Sub



'__________________________________________________________________________
Sub FBFMlib_PlayFM_UFO ( Byval FM_channel             as Ubyte = 0, _
                         Byval FM_input_UFO_Frequency as Ushort = 320, _
                         Byval FM_input_Volume        as Ubyte = 63, _
                         Byval FM_input_FadeIn_Level  as Ubyte = 15, _
                         Byval FM_input_FadeOut_Level as Ubyte = 0 )

  If FM_input_Volume < 0  then FM_input_Volume = 0
  If FM_input_Volume > 63 then FM_input_Volume = 63

  If FM_input_FadeIn_Level < 0  then FM_input_FadeIn_Level = 0
  If FM_input_FadeIn_Level > 15 then FM_input_FadeIn_Level = 15

  If FM_input_FadeOut_Level < 0  then FM_input_FadeOut_Level = 0
  If FM_input_FadeOut_Level > 15 then FM_input_FadeOut_Level = 15

  If FM_input_UFO_Frequency < 0    then FM_input_UFO_Frequency = 0
  If FM_input_UFO_Frequency > 1023 then FM_input_UFO_Frequency = 1023

  FBFMlib_PlayFM_RawSFX FM_channel, 0, FM_input_UFO_Frequency, 1, _
                        9, 0, 0, 0, 1, 1, 4, 15, FM_input_FadeIn_Level, 0, 0, 0, 0, 0, FM_input_FadeOut_Level, _
                        1, 0, 25, (63 - FM_input_Volume)

End Sub



'__________________________________________________________________________
Sub FBFMlib_PlayFM_Zap ( Byval FM_channel             as Ubyte = 0, _
                         Byval FM_input_Zap_Frequency as Ushort = 128, _
                         Byval FM_input_Volume        as Ubyte = 63, _
                         Byval FM_input_FadeIn_Level  as Ubyte = 15, _
                         Byval FM_input_FadeOut_Level as Ubyte = 0, _
                         Byval FM_input_WaveForm      as Ubyte = 3 )

  If FM_input_Volume < 0  then FM_input_Volume = 0
  If FM_input_Volume > 63 then FM_input_Volume = 63

  If FM_input_FadeIn_Level < 0  then FM_input_FadeIn_Level = 0
  If FM_input_FadeIn_Level > 15 then FM_input_FadeIn_Level = 15

  If FM_input_FadeOut_Level < 0  then FM_input_FadeOut_Level = 0
  If FM_input_FadeOut_Level > 15 then FM_input_FadeOut_Level = 15

  If FM_input_Zap_Frequency < 0    then FM_input_Zap_Frequency = 0
  If FM_input_Zap_Frequency > 1023 then FM_input_Zap_Frequency = 1023

  If FM_input_WaveForm < 0 then FM_input_WaveForm = 0
  If FM_input_WaveForm > 3 then FM_input_WaveForm = 3

  FBFMlib_PlayFM_RawSFX FM_channel, 0, FM_input_Zap_Frequency, 2, _
                        0, 10, 0, FM_input_WaveForm, 0, 0, 7, 15, FM_input_FadeIn_Level, _
                        0, 0, 0, 0, 0, FM_input_FadeOut_Level, 0, 0, 38, (63 - FM_input_Volume)

End Sub



'__________________________________________________________________________
Sub FBFMlib_PlayFM_Laser ( Byval FM_channel               as Ubyte = 0, _
                           Byval FM_input_Laser_Frequency as Ushort = 500, _
                           Byval FM_input_Volume          as Ubyte = 63, _
                           Byval FM_input_FadeIn_Level    as Ubyte = 15, _
                           Byval FM_input_FadeOut_Level   as Ubyte = 0, _
                           Byval FM_input_WaveForm_from   as Ushort = 0, _
                           Byval FM_input_WaveForm_to     as Ushort = 3 )

  If FM_input_Volume < 0  then FM_input_Volume = 0
  If FM_input_Volume > 63 then FM_input_Volume = 63

  If FM_input_FadeIn_Level < 0  then FM_input_FadeIn_Level = 0
  If FM_input_FadeIn_Level > 15 then FM_input_FadeIn_Level = 15

  If FM_input_FadeOut_Level < 0  then FM_input_FadeOut_Level = 0
  If FM_input_FadeOut_Level > 15 then FM_input_FadeOut_Level = 15

  If FM_input_Laser_Frequency < 0    then FM_input_Laser_Frequency = 0
  If FM_input_Laser_Frequency > 1023 then FM_input_Laser_Frequency = 1023

  If FM_input_WaveForm_from < 0 then FM_input_WaveForm_from = 0
  If FM_input_WaveForm_from > 3 then FM_input_WaveForm_from = 3

  If FM_input_WaveForm_to < 0 then FM_input_WaveForm_to = 0
  If FM_input_WaveForm_to > 3 then FM_input_WaveForm_to = 3

  FBFMlib_PlayFM_RawSFX FM_channel, 0, FM_input_Laser_Frequency, 2, _
                        0, 10, FM_input_WaveForm_from, FM_input_WaveForm_to, 0, 0, 3, _
                        15, FM_input_FadeIn_Level, 0, 0, 0, 0, 15, FM_input_FadeOut_Level, _
                        0, 0, 17, (63 - FM_input_Volume)

End Sub



'__________________________________________________________________________
Sub FBFMlib_PlayFM_TractorBeam ( Byval FM_channel             as Ubyte = 0, _
                                 Byval FM_input_BeamFrequency as Ushort = 400, _
                                 Byval FM_input_Volume        as Ubyte = 63, _
                                 Byval FM_input_FadeIn_Level  as Ubyte = 15, _
                                 Byval FM_input_FadeOut_Level as Ubyte = 0 )

  If FM_input_Volume < 0  then FM_input_Volume = 0
  If FM_input_Volume > 63 then FM_input_Volume = 63
  
  If FM_input_FadeIn_Level < 0  then FM_input_FadeIn_Level = 0
  If FM_input_FadeIn_Level > 15 then FM_input_FadeIn_Level = 15

  If FM_input_FadeOut_Level < 0  then FM_input_FadeOut_Level = 0
  If FM_input_FadeOut_Level > 15 then FM_input_FadeOut_Level = 15

  If FM_input_BeamFrequency < 0    then FM_input_BeamFrequency = 0
  If FM_input_BeamFrequency > 1023 then FM_input_BeamFrequency = 1023

  FBFMlib_PlayFM_RawSFX FM_channel, 0, FM_input_BeamFrequency, 2, _
                        14, 0, 0, 0, 1, 1, 1, 15, FM_input_FadeIn_Level, 0, 0, 0, 0, 0, FM_input_FadeOut_Level, _
                        1, 0, 13, (63 - FM_input_Volume)

End Sub



'__________________________________________________________________________
Sub FBFMlib_StopFM_Channel ( Byval FM_channel as Ubyte = 0 )

  If FM_channel < 0 then FM_channel = 0
  If FM_channel > 8 then FM_channel = 8
  If TxtMde_FM_Activated <= 0 then Exit Sub
  
  FBFMlib_PlayFM_RawSFX FM_channel, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0
End Sub



'__________________________________________________________________________
Sub FBFMlib_ClearFM

  If TxtMde_FM_Activated <= 0 then Exit Sub

  For SetupAllChannels as Byte = 0 to 8
    FBFMlib_PlayFM_RawSFX SetupAllChannels, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15, 0, 0, 0, 0, 0, 15, 0, 0, 0, 0
  Next

End Sub
