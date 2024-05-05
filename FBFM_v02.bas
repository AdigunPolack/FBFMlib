''----------------------------------------------------------------------------
'' FBFMlib v0.20b - (for FreeBASIC v1.08 or higher on MS-DOS/FreeDOS ONLY!)
'' Presented by Adigun Azikiwe Polack.
'' (c)2024 Adigun Azikiwe Polack.  All Rights Reserved.
''----------------------------------------------------------------------------
''
'' This FreeBASIC OPL2 music-/sfx-creation library for both MS-DOS and FreeDOS
'' fully supports all nine (9) sound channels that can be used at any time in
'' assisting you real good towards making some wonderful-quality FM sounds
'' that can be used richly in the making of your brand-new DOS games... and
'' this is only the beginning of it all.
''
'' There is a lot more to come as I continue to improve on this project,
'' including a full-blown music creator/editor that will help make things a
'' WHOLE LOT easier in implementing such great FM-synth music into your games
'' that use this FreeBASIC DOS lib.
''
'' In the meantime, please do quite enjoy the very start of this amazing new
'' FM-synth library, as there SURE hasn't been such a dedicated OPL2 sound
'' library in DOS using FreeBASIC.  Ever.  Until now, that is!!!  ;)
''
''
''
''                            WISHING YOU THE GREATEST IN YOUR GAME CREATIONS,
''
''                                                       Adigun Azikiwe Polack
''
''----------------------------------------------------------------------------




#include "FBFM_v02.bi"

Sub Vsync
  Wait &H3DA, 8, 8
  Wait &H3DA, 8
End Sub





If FBFMlib_AutoDetectSB then
  ? "AdLib/SoundBlaster card has successfully been detected at address " + hex(TxtMde_FM_BaseAddr) + "h."
  Sleep 600
else
  ? "AdLib/SoundBlaster card has not been found on this machine."
  ? "Press any key to exit."
  Sleep
  Cls: Screen 0: End
End if  

Screen 0: Cls
FBFMlib_InitFM


Locate 1: Color 14, 1: ? "FBFMlib FM Synth Waveform Test (for FreeBASIC v1.08 or higher on MS-DOS/FreeDOS)"
Locate 2: Color 15, 0: ? "(c)2024 Adigun Azikiwe Polack.  All Rights Reserved."

Locate 4
Color 7, 0

For Waveform as Long = 0 to 6

  Select Case as const Waveform
    Case 0: ? "Now playing some test music in Sine form..."
    Case 1: ? "Now playing some test music in SemiSine form..."
    Case 2: ? "Now playing some test music in SawCurve form..."
    Case 3: ? "Now playing some test music in Pulse form..."
    Case 4: ? "Now playing some test music in TinyTone form..."
    Case 5: ? "Now playing some test music in WildTone form..."
    Case 6: ? "Now playing some test music in SoftTone form..."
  End Select

  For Testmus as Long = 0 to 400
    Select Case as const Testmus
      Case 0
        Select Case as const Waveform
          Case 0: FBFMlib_PlayFM_Sine     0, "G", 1
          Case 1: FBFMlib_PlayFM_SemiSine 0, "G", 1
          Case 2: FBFMlib_PlayFM_SawCurve 0, "G", 1
          Case 3: FBFMlib_PlayFM_Pulse    0, "G", 1
          Case 4: FBFMlib_PlayFM_TinyTone 0, "G", 1
          Case 5: FBFMlib_PlayFM_WildTone 0, "G", 1
          Case 6: FBFMlib_PlayFM_SoftTone 0, "G", 1
        End Select
      Case 30
        Select Case as const Waveform
          Case 0: FBFMlib_PlayFM_Sine     0, "B", 2
          Case 1: FBFMlib_PlayFM_SemiSine 0, "B", 2
          Case 2: FBFMlib_PlayFM_SawCurve 0, "B", 2
          Case 3: FBFMlib_PlayFM_Pulse    0, "B", 2
          Case 4: FBFMlib_PlayFM_TinyTone 0, "B", 2
          Case 5: FBFMlib_PlayFM_WildTone 0, "B", 2
          Case 6: FBFMlib_PlayFM_SoftTone 0, "B", 2
        End Select
      Case 60
        Select Case as const Waveform
          Case 0: FBFMlib_PlayFM_Sine     0, "D", 3
          Case 1: FBFMlib_PlayFM_SemiSine 0, "D", 3
          Case 2: FBFMlib_PlayFM_SawCurve 0, "D", 3
          Case 3: FBFMlib_PlayFM_Pulse    0, "D", 3
          Case 4: FBFMlib_PlayFM_TinyTone 0, "D", 3
          Case 5: FBFMlib_PlayFM_WildTone 0, "D", 3
          Case 6: FBFMlib_PlayFM_SoftTone 0, "D", 3
        End Select
      Case 90
        Select Case as const Waveform
          Case 0: FBFMlib_PlayFM_Sine     0, "E", 3
          Case 1: FBFMlib_PlayFM_SemiSine 0, "E", 3
          Case 2: FBFMlib_PlayFM_SawCurve 0, "E", 3
          Case 3: FBFMlib_PlayFM_Pulse    0, "E", 3
          Case 4: FBFMlib_PlayFM_TinyTone 0, "E", 3
          Case 5: FBFMlib_PlayFM_WildTone 0, "E", 3
          Case 6: FBFMlib_PlayFM_SoftTone 0, "E", 3
        End Select
      Case 27, 57, 87, 177: FBFMlib_StopFM_Channel 0
      Case 180
        Select Case as const Waveform
          Case 0
            FBFMlib_PlayFM_Sine 0, "G" , 1
            FBFMlib_PlayFM_Sine 1, "G" , 2, 56, 2
            FBFMlib_PlayFM_Sine 2, "B" , 3, 56, 2
            FBFMlib_PlayFM_Sine 3, "E" , 4, 56, 2
            FBFMlib_PlayFM_Sine 4, "A" , 4, 56, 2
            FBFMlib_PlayFM_Sine 5, "A" , 5, 56, 6
            FBFMlib_PlayFM_Sine 6, "F#", 3, 56, 3
            FBFMlib_PlayFM_Sine 7, "A" , 4, 56, 4
          Case 1                                
            FBFMlib_PlayFM_SemiSine 0, "G" , 1
            FBFMlib_PlayFM_SemiSine 1, "G" , 2, 56, 2
            FBFMlib_PlayFM_SemiSine 2, "B" , 3, 56, 2
            FBFMlib_PlayFM_SemiSine 3, "E" , 4, 56, 2
            FBFMlib_PlayFM_SemiSine 4, "A" , 4, 56, 2
            FBFMlib_PlayFM_SemiSine 5, "A" , 5, 56, 6
            FBFMlib_PlayFM_SemiSine 6, "F#", 3, 56, 3
            FBFMlib_PlayFM_SemiSine 7, "A" , 4, 56, 4
          Case 2
            FBFMlib_PlayFM_SawCurve 0, "G" , 1
            FBFMlib_PlayFM_SawCurve 1, "G" , 2, 56, 2
            FBFMlib_PlayFM_SawCurve 2, "B" , 3, 56, 2
            FBFMlib_PlayFM_SawCurve 3, "E" , 4, 56, 2
            FBFMlib_PlayFM_SawCurve 4, "A" , 4, 56, 2
            FBFMlib_PlayFM_SawCurve 5, "A" , 5, 56, 6
            FBFMlib_PlayFM_SawCurve 6, "F#", 3, 56, 3
            FBFMlib_PlayFM_SawCurve 7, "A" , 4, 56, 4
          Case 3
            FBFMlib_PlayFM_Pulse 0, "G" , 1
            FBFMlib_PlayFM_Pulse 1, "G" , 2, 56, 2
            FBFMlib_PlayFM_Pulse 2, "B" , 3, 56, 2
            FBFMlib_PlayFM_Pulse 3, "E" , 4, 56, 2
            FBFMlib_PlayFM_Pulse 4, "A" , 4, 56, 2
            FBFMlib_PlayFM_Pulse 5, "A" , 5, 56, 6
            FBFMlib_PlayFM_Pulse 6, "F#", 3, 56, 3
            FBFMlib_PlayFM_Pulse 7, "A" , 4, 56, 4
          Case 4
            FBFMlib_PlayFM_TinyTone 0, "G" , 1
            FBFMlib_PlayFM_TinyTone 1, "G" , 2, 56, 2
            FBFMlib_PlayFM_TinyTone 2, "B" , 3, 56, 2
            FBFMlib_PlayFM_TinyTone 3, "E" , 4, 56, 2
            FBFMlib_PlayFM_TinyTone 4, "A" , 4, 56, 2
            FBFMlib_PlayFM_TinyTone 5, "A" , 5, 56, 6
            FBFMlib_PlayFM_TinyTone 6, "F#", 3, 56, 3
            FBFMlib_PlayFM_TinyTone 7, "A" , 4, 56, 4
          Case 5                            
            FBFMlib_PlayFM_WildTone 0, "G" , 1
            FBFMlib_PlayFM_WildTone 1, "G" , 2, 56, 2
            FBFMlib_PlayFM_WildTone 2, "B" , 3, 56, 2
            FBFMlib_PlayFM_WildTone 3, "E" , 4, 56, 2
            FBFMlib_PlayFM_WildTone 4, "A" , 4, 56, 2
            FBFMlib_PlayFM_WildTone 5, "A" , 5, 56, 6
            FBFMlib_PlayFM_WildTone 6, "F#", 3, 56, 3
            FBFMlib_PlayFM_WildTone 7, "A" , 4, 56, 4
          Case 6                            
            FBFMlib_PlayFM_SoftTone 0, "G" , 1
            FBFMlib_PlayFM_SoftTone 1, "G" , 2, 56, 2
            FBFMlib_PlayFM_SoftTone 2, "B" , 3, 56, 2
            FBFMlib_PlayFM_SoftTone 3, "E" , 4, 56, 2
            FBFMlib_PlayFM_SoftTone 4, "A" , 4, 56, 2
            FBFMlib_PlayFM_SoftTone 5, "A" , 5, 56, 6
            FBFMlib_PlayFM_SoftTone 6, "F#", 3, 56, 3
            FBFMlib_PlayFM_SoftTone 7, "A" , 4, 56, 4
        End Select
    End Select
    Vsync
  Next
  FBFMlib_ClearFM
  While Inkey <> "": Wend
  Select Case as const Waveform
    Case 0 to 5: ? "Press any key..."
    Case 6: ? "Press any key to continue, please."
  End Select
  Sleep: ?
Next



Cls

Locate 1: Color 14, 1: ? "FBFMlib FM Synth Sound-FX Test (for FreeBASIC v1.08 or higher on MS-DOS/FreeDOS)"
Locate 2: Color 15, 0: ? "(c)2024 Adigun Azikiwe Polack.  All Rights Reserved."

Locate 4
Color 11, 0
? "After the sound stops, press any key to advance to the next sound."
?
Color 7, 0
? "FBFMlib_PlayFM_Noise in progress..."

For xengine as Ushort = 0 to 512 step 2
  FBFMlib_PlayFM_Noise 1, xengine, , , 2
  For Retrace as Short = 0 to 3
    Vsync
  Next
Next

sleep

? "FBFMlib_PlayFM_Racecar in progress..."

For xengine as Ushort = 0 to 512 step 2
  FBFMlib_PlayFM_Racecar 1, xengine, , , 2
  For Retrace as Short = 0 to 3
    Vsync
  Next
Next

sleep

? "FBFMlib_PlayFM_Helicopter in progress..."

For xengine as Ushort = 0 to 1023 step 4
  FBFMlib_PlayFM_Helicopter 1, xengine, , , 2
  For Retrace as Short = 0 to 3
    Vsync
  Next
Next

sleep

? "FBFMlib_PlayFM_Biplane in progress..."

For xengine as Ushort = 0 to 512 step 2
  FBFMlib_PlayFM_Biplane 1, xengine, , , 2
  For Retrace as Short = 0 to 3
    Vsync
  Next
Next

sleep

? "FBFMlib_PlayFM_Motorcycle in progress..."

For xengine as Ushort = 0 to 512 step 2
  FBFMlib_PlayFM_Motorcycle 1, xengine, , , 2
  For Retrace as Short = 0 to 3
    Vsync
  Next
Next

sleep

? "FBFMlib_PlayFM_UFO in progress..."

For xengine as Ushort = 0 to 512 step 2
  FBFMlib_PlayFM_UFO 1, xengine, , , 2
  For Retrace as Short = 0 to 3
    Vsync
  Next
Next

sleep

? "FBFMlib_PlayFM_Zap in progress..."

For xengine as Ushort = 0 to 1023 step 4
  FBFMlib_PlayFM_Zap 1, xengine, , , 2
  For Retrace as Short = 0 to 3
    Vsync
  Next
Next

sleep

? "FBFMlib_PlayFM_Laser in progress..."

For xengine as Ushort = 0 to 1023 step 4
  FBFMlib_PlayFM_Laser 1, xengine, , , 2
  For Retrace as Short = 0 to 3
    Vsync
  Next
Next

sleep

? "FBFMlib_PlayFM_TractorBeam in progress..."

For xengine as Ushort = 0 to 512 step 2
  FBFMlib_PlayFM_TractorBeam 1, xengine, , , 2
  For Retrace as Short = 0 to 3
    Vsync
  Next
Next

Color 15, 0
?: ? "Press any key to exit."
sleep

While Inkey <> "": Wend

FBFMlib_ClearFM

Cls
Screen 0
Color 7, 0
End