Speak Japanese Clipboard
A simple PowerShell script designed for Japanese learners to practice pronunciation. Select and copy Japanese text (e.g., from a webpage, document, or app), then use a right-click context menu or taskbar shortcut to hear it spoken aloud using a Japanese text-to-speech voice. Perfect for daily language practice!
Features

Speak Clipboard Text: Copies Japanese text and speaks it using Windows' text-to-speech (TTS) with a Japanese voice.
Right-Click Menu: Adds a "Speak Japanese Clipboard" option to the Windows context menu (desktop or folder background).
Taskbar Shortcut: Create a pinnable shortcut for quick access.
No UI: Runs silently, making it a seamless daily tool for learning Japanese pronunciation.

Prerequisites

Windows OS: The script uses Windows' SAPI (Speech API).
Japanese TTS Voice: Install a Japanese voice via Settings > Time & Language > Speech > Manage voices (e.g., Microsoft Haruka or Ayumi). If unavailable, it defaults to the system voice.
PowerShell: Included with Windows by default.

Installation

Download the Script:

Clone or download this repository.
Place SpeakJapaneseClipboard.ps1 in a folder, e.g., C:\Scripts\.


Set PowerShell Execution Policy (one-time setup):

Open PowerShell as Administrator (Win + S, type PowerShell, right-click, "Run as administrator").
Run:Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned


Type Y to confirm. This allows local scripts to run.


Option A: Add to Right-Click Menu:

Edit AddSpeakJapaneseClipboard.reg to update the script path (replace C:\\Scripts\\SpeakJapaneseClipboard.ps1 with your actual path, using double backslashes \\).
Double-click AddSpeakJapaneseClipboard.reg and confirm to add the "Speak Japanese Clipboard" option to the context menu.
To remove, create a .reg file with:Windows Registry Editor Version 5.00
[-HKEY_CLASSES_ROOT\Directory\Background\shell\Speak Japanese Clipboard]

Save as RemoveSpeakJapaneseClipboard.reg, double-click, and confirm.


Option B: Create a Taskbar Shortcut:

Right-click on Desktop, select New > Shortcut.
Set the location to:powershell.exe -NoProfile -ExecutionPolicy Bypass -File "C:\Scripts\SpeakJapaneseClipboard.ps1"

Replace the path with your script’s location.
Name it (e.g., "Speak Japanese Clipboard") and finish.
(Optional) Right-click the shortcut, select Properties > Change Icon, and choose an icon (e.g., shell32.dll,71).
Right-click the shortcut and select "Pin to Taskbar."



Usage

Highlight Japanese Text: Select text (e.g., "テストです") in any app (browser, document, etc.).
Copy: Press Ctrl+C.
Trigger:
Right-Click: Right-click on Desktop or in a folder, select "Speak Japanese Clipboard."
Taskbar: Click the pinned shortcut.


The text will be spoken in a Japanese voice (or default voice if none installed).

Example
Copy this text: こんにちは、お元気ですか？Right-click on Desktop or click the taskbar shortcut, and hear it spoken!
Notes

Ensure the script path in the .reg file or shortcut matches your setup.
If no sound plays, check if a Japanese TTS voice is installed or test with other text.
The script is silent (no UI), making it ideal for quick, daily practice.

Contributing
Feel free to fork, suggest improvements, or report issues! This tool is meant to help Japanese learners worldwide.

License
MIT License - feel free to use, modify, and share.
