;********************************************************
; QuickQuotes
; By: Haris00911 
; Website: HarisGuard.com
; GitHub: Github.com/Haris00911
; Version: 1.1
; Release Date: April 18, 2024
;********************************************************
; Description: 
;  This script adds quotation marks around copied text and 
;  handles cases where there might be a trailing space.
;
; Usage:
;  1. Install AutoHotkey (https://autohotkey.com)
;  2. Save this code as a .ahk file
;  3. Run the script
;  4. Highlight text and press Ctrl + Middle Mouse Button
;********************************************************

#NoTrayIcon

^MButton:: ; Ctrl + Middle Mouse Button

    ClipSaved := ClipboardAll ; Save the current clipboard content including formats

    Clipboard := "" ; Clear clipboard to avoid pasting and mixing old content

    Send, ^c ; Copy highlighted text to clipboard

    ClipWait, 1 ; Wait up to 1 second for the clipboard to contain data

    if (ErrorLevel) { ; If ClipWait times out or the clipboard is empty
        Clipboard := ClipSaved ; Restore clipboard content before exiting
        return ; Exit the function without doing anything
    }

    if (SubStr(Clipboard, StrLen(Clipboard), 1) = " ") { ; Check if the last character is a space
        Clipboard := """" . SubStr(Clipboard, 1, StrLen(Clipboard) - 1) . """" " " ; Move the space after the ending quotation mark
    } else {
        Clipboard := """" . Clipboard . """" ; Enclose the clipboard content in quotes
    }

    Sleep, 100 ; Wait a moment to ensure Clipboard operation completes

    Send, ^v ; Paste the modified clipboard content

    Sleep, 100 ; Wait a bit to let the paste operation complete

    Clipboard := ClipSaved ; Restore the original clipboard content

return