#include <WindowsConstants.au3>
#include <MsgBoxConstants.au3>
#include <Inet.au3>
#include <GUIConstantsEx.au3>
#include <ColorConstants.au3>
GUICreate("app", 300, 150)
GUISetBkColor("0x008000")
GUICtrlCreateLabel("CHATGPT", 100, 15 , 100, 20)
GUICtrlSetColor(-1, "0x00000")
GUICtrlSetFont(-1, 15, 900, 0, "Arial")
$text = GUICtrlCreateInput("", 50,50,190,25)
GUICtrlSetFont(-1, 10, 900, 0, "Arial")
$butt = GUICtrlCreateButton("next", 120,90,50,30)
GUISetState()
Whule 1
    Switch GUIGetMsg()
    Case $GUI_EVENT_CLOSE
        case $butt
            Local $sURL = "https://5fire.fasttube.ir/ai?text="&GUICtrlRead($text)
            Local $sResponse = _INetGetSource($sURL)
            Local $oVoice = ObjCreare("SAPI.SpVoice")
            $oVoice.Speak($sResponse)
        Exit
    EndSwitch
WEnd
