; Runs only 1 instance of the script
#SingleInstance, Force
; Prevents checking empty variables
#NoEnv
; Runs the script at max speed
SetBatchLines, -1

; Array used to backup everything
clipBackup  := []

; Creates the hotkeys ^Numpad1 through ^Numpad9 and has them fire the PasteBackup label when used
Loop, 9
    Hotkey, % "^Numpad" A_Index, PasteBackup

return

; Label used for retreiving entries from the backup
PasteBackup:

    ; Regex to remove everything but the number of the key.
    ; The keyboard number becomes synonymous with the array slot.
    thisHK      := RegExReplace(A_ThisHotkey, "i)\^Numpad", "")

    ; Saves the current clipboard
    clipBak     := ClipboardAll

    ; Retrieves the array entry for the pressed hotkey
    Clipboard   := clipBackup[thisHK]

    ; Emulates a paste
    SendInput, ^v

    ; Restores clipboard to contain whatever was originally on there.
    Clipboard   := clipBak
return

~^c::
    Sleep, 20

    ; Places whatever was copied at the first index slot. (Yes, I chose to skip 0.)
    ; All other entries are moved to the right.
    clipBackup.InsertAt(1, Clipboard)

    ; Checks to make sure there aren't more than 9 entries in the array.
    ; This prevents the variable from getting huge over time.
    while (clipBackup.Length() > 9)

        ; If there are more than 9, it "pops" the last entry off until there are only 9 left.
        clipBackup.Pop()
return
