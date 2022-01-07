# Database API Calls 

```vbscript
' API Declarations
' ================
```

## Windows Multimedia (winmm)

### Sound
API Declaration
```vbscript
Declare PtrSafe Function apisndPlaySound Lib "winmm" Alias "sndPlaySoundA" _
(ByVal filename As String, ByVal snd_async As Long) As Long
```

Function
```vbscript
Function PlaySound(sWavFile As String)
' Purpose: Plays a sound; Argument: the full path 
' and file name
   If apisndPlaySound(sWavFile, 1) = 0 Then
      MsgBox "The sound did not play!"
   End If
End Function
```

