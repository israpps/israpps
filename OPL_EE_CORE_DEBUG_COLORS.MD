# EECORE Color documentation by El_isra (as of 14/10/2024)
## Static Debug Colors: 
source file | line | Color (BGR) | Category | Description
:---------- | :--- | :---------: | :------: | :--------- 
src/igs_api.c | 172 | ![0xCCFFFF](https://img.shields.io/badge/CCFFFF-FFFFCC?style=for-the-badge) | IGS | Screenshot() begins
src/igs_api.c | 380 | ![0x0099FF](https://img.shields.io/badge/0099FF-FF9900?style=for-the-badge) | IGS | SaveTextFile() begins
src/iopmgr.c | 152 | ![0xFF00FF](https://img.shields.io/badge/FF00FF-FF00FF?style=for-the-badge) | IOPMGR | New_Reset_Iop()
src/iopmgr.c | 173 | ![0x00A5FF](https://img.shields.io/badge/00A5FF-FFA500?style=for-the-badge) | IOPMGR | ResetIopSpecial (without args) finished!
src/iopmgr.c | 178 | ![0x00FFFF](https://img.shields.io/badge/00FFFF-FFFF00?style=for-the-badge) | IOPMGR | ResetIopSpecial (with args) finished!
src/main.c | 116 | ![0xFF0000](https://img.shields.io/badge/FF0000-0000FF?style=for-the-badge) | MAIN | Reached end of eecoreinit()
src/modmgr.c | 161 | ![0x00FFDC](https://img.shields.io/badge/00FFDC-DCFF00?style=for-the-badge) | MODMGR | IRX loading error (from MODLOAD)
src/modmgr.c | 172 | ![0xDCFF00](https://img.shields.io/badge/DCFF00-00FFDC?style=for-the-badge) | MODMGR | IRX size is 0 or less
src/padhook.c | 70 | ![0x80FF00](https://img.shields.io/badge/80FF00-00FF80?style=for-the-badge) | LOADELF | t_loadElf() begins
src/padhook.c | 76 | ![0x000080](https://img.shields.io/badge/000080-800000?style=for-the-badge) | LOADELF | Patch prefix check
src/padhook.c | 82 | ![0xFF8000](https://img.shields.io/badge/FF8000-0080FF?style=for-the-badge) | LOADELF | loading SIO2 modules and USBD if found
src/padhook.c | 121 | ![0x0080FF](https://img.shields.io/badge/0080FF-FF8000?style=for-the-badge) | LOADELF | ExecPS2() begins
src/padhook.c | 128 | ![0x0000FF](https://img.shields.io/badge/0000FF-FF0000?style=for-the-badge) | LOADELF | LoadElf() error
src/padhook.c | 149 | ![0xFFFFFF](https://img.shields.io/badge/FFFFFF-FFFFFF?style=for-the-badge) | IGR | Thread WakeUp
src/padhook.c | 162 | ![0xFF8000](https://img.shields.io/badge/FF8000-0080FF?style=for-the-badge) | IGR | oplIGRShutdown()
src/padhook.c | 167 | ![0x0000FF](https://img.shields.io/badge/0000FF-FF0000?style=for-the-badge) | IGR | Reset IOP
src/padhook.c | 200 | ![0x00FF00](https://img.shields.io/badge/00FF00-00FF00?style=for-the-badge) | IGR | Stopping GSM
src/padhook.c | 207 | ![0xFF0000](https://img.shields.io/badge/FF0000-0000FF?style=for-the-badge) | IGR | Stopping CheatEngine
src/padhook.c | 213 | ![0x00FFFF](https://img.shields.io/badge/00FFFF-FFFF00?style=for-the-badge) | IGR | Waiting for IOP Reboot
src/padhook.c | 220 | ![0xFF80FF](https://img.shields.io/badge/FF80FF-FF80FF?style=for-the-badge) | IGR | Initializing RPC and services
src/padhook.c | 229 | ![0x800000](https://img.shields.io/badge/800000-000080?style=for-the-badge) | IGR | Execute RESETSPU.IRX
src/padhook.c | 240 | ![0x008000](https://img.shields.io/badge/008000-008000?style=for-the-badge) | IGR | Exiting services
src/padhook.c | 250 | ![0x0000FF](https://img.shields.io/badge/0000FF-FF0000?style=for-the-badge) | IGR | oplIGRShutdown(1)
src/padhook.c | 537 | ![0x800080](https://img.shields.io/badge/800080-800080?style=for-the-badge) | PADHOOK | Searching PadOpen() pattern
src/padhook.c | 549 | ![0x008000](https://img.shields.io/badge/008000-008000?style=for-the-badge) | PADHOOK | Patching PadOpen()
src/syshook.c | 90 | ![0x00FF00](https://img.shields.io/badge/00FF00-00FF00?style=for-the-badge) | SYSHOOK | WipeUserMemory()
src/syshook.c | 131 | ![0xFFFFFF](https://img.shields.io/badge/FFFFFF-FFFFFF?style=for-the-badge) | LOADELF | sysLoadElf() error. hitting function end
## Blinking Debug Colors:
source file | line | Blinks | Color (BGR) | Blinks forever? | Category | Description
:---------- | :--- | :----- | :---------: | :-------------: | :------: | :--------- 
src/igs_api.c | 61 | 2 | ![0x00FF00](https://img.shields.io/badge/00FF00-00FF00?style=for-the-badge) | **false** | IGS | FindEmptyArea(): Found
src/igs_api.c | 65 | 2 | ![0x0066FF](https://img.shields.io/badge/0066FF-FF6600?style=for-the-badge) | **false** | IGS | FindEmptyArea(): Not found
src/igs_api.c | 164 | 1 | ![0x0000FF](https://img.shields.io/badge/0000FF-FF0000?style=for-the-badge) | **true** | IGS | PixelSize(): Unknown?
src/igs_api.c | 194 | 2 | ![0x0000FF](https://img.shields.io/badge/0000FF-FF0000?style=for-the-badge) | **true** | IGS | Screenshot(): sbw out of range [1-32]
src/igs_api.c | 197 | 3 | ![0x0000FF](https://img.shields.io/badge/0000FF-FF0000?style=for-the-badge) | **true** | IGS | Screenshot(): height out of range [64-1080]
src/igs_api.c | 413 | 4 | ![0x0000FF](https://img.shields.io/badge/0000FF-FF0000?style=for-the-badge) | **true** | IGS | SaveTextFile(): FILEIO Open Error
src/igs_api.c | 600 | 6 | ![0x0000FF](https://img.shields.io/badge/0000FF-FF0000?style=for-the-badge) | **true** | IGS | SaveBitmapFile(): Number == 255
src/igs_api.c | 620 | 4 | ![0x0000FF](https://img.shields.io/badge/0000FF-FF0000?style=for-the-badge) | **true** | IGS | SaveBitmapFile(): FILEIO error
src/igs_api.c | 626 | 5 | ![0x0000FF](https://img.shields.io/badge/0000FF-FF0000?style=for-the-badge) | **true** | IGS | SaveBitmapFile(): FILEIO write err
src/igs_api.c | 648 | 5 | ![0x0000FF](https://img.shields.io/badge/0000FF-FF0000?style=for-the-badge) | **true** | IGS | SaveBitmapFile(): FILEIO write error
src/igs_api.c | 661 | 5 | ![0x0000FF](https://img.shields.io/badge/0000FF-FF0000?style=for-the-badge) | **true** | IGS | SaveBitmapFile(): FILEIO write error
src/igs_api.c | 665 | 5 | ![0x0000FF](https://img.shields.io/badge/0000FF-FF0000?style=for-the-badge) | **true** | IGS | SaveBitmapFile(): FILEIO write error
src/igs_api.c | 787 | 1 | ![0xFF0000](https://img.shields.io/badge/FF0000-0000FF?style=for-the-badge) | **false** | IGS | InGameScreenshot() end
src/modmgr.c | 165 | 1 | ![0x0000FF](https://img.shields.io/badge/0000FF-FF0000?style=for-the-badge) | **true** | MODMGR | MODLOAD: out of IOP Memory
