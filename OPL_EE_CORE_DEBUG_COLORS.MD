## EE_CORE COLORS DOCUMENTATION BY EL_ISRA (Matias Israelson) as of 05/01/2022 latest OPL Build
### COLOR NOTES: 
####	if you see a number encased in brackets along the color(ie: `[3]`). it means that the color blinks the ammount of times you see inside the brackets

|    FILE   |         FUNCTION         |         COLOR          |COLOR (BGR)| function/Context
----------- | ------------------------ | ---------------------- | --------- | --------------------------------------------------------------------------------------- |
`padhook.c` | `t_loadELF()`            | ![Blue green](https://img.shields.io/badge/%20-Blue%20green%20-00ff80)| `0x80FF00`| SifInitRpc(0); 
`padhook.c` | `t_loadELF()`            | ![Dark Red](https://img.shields.io/badge/%20-Dark%20Red%20-800000)    | `0x000080`| sbv_patch_disable_prefix_check();
`padhook.c` | `t_loadELF()`            | ![Blue Sky](https://img.shields.io/badge/%20-Blue%20Sky%20-0080ff)    | `0xFF8000`| Modules loading(SIO2MAN, MCMAN, USBD, USBHDFSD), WipeUserMemory(), flushcache(), LoadELF
`padhook.c` | `t_loadELF()`            | ![Orange](https://img.shields.io/badge/%20-Orange%20-ff8000)          | `0x0080FF`| ExecPS2()
`padhook.c` | `t_loadELF()`            | ![Red](https://img.shields.io/badge/%20-Red%20-ff0000)                | `0x0000FF`| Post ExecPS2()
`padhook.c` | `IGR_Thread()`           | ![White](https://img.shields.io/badge/%20-White%20-ffffff)	         | `0xFFFFFF`|SifInitRpc(0);
`padhook.c` | `IGR_Thread()`           | ![Blue Sky](https://img.shields.io/badge/%20-Blue%20Sky%20-0080ff)    | `0xFF8000`| oplIGRShutdown(0);
`padhook.c` | `IGR_Thread()`           | ![Red](https://img.shields.io/badge/%20-Red%20-ff0000)                | `0x0000FF`| IOP Reset, Remove_Kernel_Hooks(), InitializeTLB(), GetCop0(25)
`padhook.c` | `IGR_Thread()`           | ![green](https://img.shields.io/badge/%20-Green%20-00ff00)            | `0x00FF00`| Stopping GSM (if active)
`padhook.c` | `IGR_Thread()`           | ![Blue](https://img.shields.io/badge/%20-Blue%20-0000ff)              | `0xFF0000`| Stopping PS2RD (if active)
`padhook.c` | `IGR_Thread()`           | ![yellow](https://img.shields.io/badge/%20-Yellow%20-ffff00)          | `0x00FFFF`| SifIopSync()
`padhook.c` | `IGR_Thread()`           | ![pink](https://img.shields.io/badge/%20-pink%20-ff00ff)              | `0xFF80FF`|  SifInitRpc(), SifInitIopHeap(), LoadFileInit(), sbv_patch_enable_lmb()
`padhook.c` | `IGR_Thread()`           | ![dark blue](https://img.shields.io/badge/%20-Dark%20Blue%20-000080)  | `0x800000`| LoadOPLModule(OPL_MODULE_ID_RESETSPU), InGameScreenshot() (If enabled)
`padhook.c` | `IGR_Thread()`           | ![dark green](https://img.shields.io/badge/%20-Dark%20Green-008000)   | `0x008000`| SifExitIopHeap(), LoadFileExit(), SifExitRpc()
`padhook.c` | `IGR_Thread()`           | ![Red](https://img.shields.io/badge/%20-Red%20-ff0000)                | `0x0000FF`| oplIGRShutdown()
`padhook.c` | `Install_PadOpen_Hook()` | ![purple](https://img.shields.io/badge/%20-Purple%20-800080)          | `0x800080`| PadOpen pattern search
`padhook.c` | `Install_PadOpen_Hook()` | ![dark green](https://img.shields.io/badge/%20-Dark%20Green-008000)   | `0x008000`| PadOpen patches
`padhook.c` | `Install_PadOpen_Hook()` | ![black](https://img.shields.io/badge/%20-Bllack%20-000000)           | `0x000000`| END OF FUNCTION
__---__|__---__|__---__|__---__|__---__
`iopmgr.c`  | `New_Reset_Iop()`        | ![purple](https://img.shields.io/badge/%20-Pruple%20-ff00ff)          | `0xFF00FF`| FUNCTION START
`iopmgr.c`  | `New_Reset_Iop()`        | ![orange](https://img.shields.io/badge/%20-Orange%20-FFA500)          | `0x00A5FF`| ResetIopSpecial(NULL, 0);
`iopmgr.c`  | `New_Reset_Iop()`        | ![yellow](https://img.shields.io/badge/%20-Yellow%20-ffff00)          | `0x00FFFF`| ResetIopSpecial(&arg[10], arglen - 10); (only if arglen is larger than 0)
`iopmgr.c`  | `New_Reset_Iop()`        | ![black](https://img.shields.io/badge/%20-Black%20-000000)            | `0x000000`| END OF FUNCTION
__---__|__---__|__---__|__---__|__---__
`main.c`    | `eecoreInit();`          | ![blue](https://img.shields.io/badge/%20-Blue%20-0000ff)              | `0xff0000`|  Before SifExitRpc(); END OF FUNCTION
__---__|__---__|__---__|__---__|__---__
`igs_api.c` | `FindEmptyArea();`       | ![green[1]](https://img.shields.io/badge/%20-Green[1]%20-00ff00)          | `0x00FF00`| FOUND
`igs_api.c` | `FindEmptyArea();`       | ![Orange[1]](https://img.shields.io/badge/%20-Orange[1]%20-ff6600)	        | `0x0066FF`| NOT FOUND
`igs_api.c` | `FindEmptyArea();`       | ![black](https://img.shields.io/badge/%20-Black%20-000000)| `0x000000`   | END OF FUNCTION
`igs_api.c` | `PixelSize();`           | ![red[2]](https://img.shields.io/badge/%20-Red[2]%20-ff0000)| `0x0000FF` | Reached function end
`igs_api.c` | `Screenshot()`           | ![Light Yellow](https://img.shields.io/badge/%20-Light%20Yellow-ffffcc)  | `0xCCFFFF`| FUNCTION START
`igs_api.c` | `Screenshot()`           | ![red[2]](https://img.shields.io/badge/%20-Red[2]%20-ff0000)             | `0x0000FF`| if ((sbw < 1) || (sbw > 32))
`igs_api.c` | `Screenshot()`           | ![red[3]](https://img.shields.io/badge/%20-Red[3]%20-ff0000)             | `0x0000FF`| if ((height < 64) || (height > 1080))
`igs_api.c` | `Screenshot()`           | Yellow Fade Out	                                                         |           | Transfer image to host		
`igs_api.c` | `ConvertColors32()`      | Red Fade Out      	                                                      |           | LOOP END		
`igs_api.c` | `ConvertColors24()`      | ![Green Fade Out](https://img.shields.io/badge/%20-Green%20Fade%20out-00ff00)| `0x00FF00`| LOOP END		
`igs_api.c` | `ConvertColors16();`     | ![Blue Fade Out](https://img.shields.io/badge/%20-Blue%20Fade%20out-0000ff) | `0xff0000`| LOOP END	
`igs_api.c` | `SaveTextFile();`        | ![orange](https://img.shields.io/badge/%20-Orange-ff9900)| `0x0099FF`| FUNCTION START	
`igs_api.c` | `SaveTextFile();`        | ![black](https://img.shields.io/badge/%20-Black-000000)| `0x000000`| FUNCTION END	
`igs_api.c` | `SaveBitmapFile();`      | ![purple violet](https://img.shields.io/badge/%20-Purple%20Violet%20-660099)       	| `0x990066`| FUNCTION START
`igs_api.c` | `SaveBitmapFile();`      | ![red[6]](https://img.shields.io/badge/%20-Red[6]%20-ff0000) | `0x0000FF`| Sequential numbering feature reached screenshot 255
`igs_api.c` | `SaveBitmapFile();`      | ![red[4]](https://img.shields.io/badge/%20-Red[4]%20-ff0000) | `0x0000FF`| Error creating file
`igs_api.c` | `SaveBitmapFile();`      | ![red[5]](https://img.shields.io/badge/%20-Red[5]%20-ff0000) | `0x0000FF`| writing the BMP Header didn´t return a value of 2
`igs_api.c` | `SaveBitmapFile();`      | ![red[5]](https://img.shields.io/badge/%20-Red[5]%20-ff0000) | `0x0000FF`| Writing the rest of the data didn´t return a value of 52
`igs_api.c` | `SaveBitmapFile();`      | ![red[5]](https://img.shields.io/badge/%20-Red[5]%20-ff0000) | `0x0000FF`| Written data not equal to buffer length
`igs_api.c` | `SaveBitmapFile();`      | ![red[5]](https://img.shields.io/badge/%20-Red[5]%20-ff0000) | `0x0000FF`| Written data not equal to buffer length (same as before, but for Interlace Mode)
`igs_api.c` | `SaveBitmapFile();`      | gray fadeout       	| 	    | end of data writing loop
`igs_api.c` | `SaveBitmapFile();`      | ![black](https://img.shields.io/badge/%20-Black-000000) | `0x000000`| END OF FUNCTION
`igs_api.c` | `InGameScreenshot();`    | ![midnightblue](https://img.shields.io/badge/%20-MidNight%20Blue-330066)       	| `0x660033`| Module Loading (SIO2MAN, MCMAN)
`igs_api.c` | `InGameScreenshot();`    | ![blue[1]](https://img.shields.io/badge/%20-Blue[1]%20-0000ff)            	| `0xFF0000`| END OF FUNCTION
__---__|__---__|__---__|__---__|__---__
`syshook.c` | `sysLoadElf();`          | ![green](https://img.shields.io/badge/%20-Green-00ff00) | `0x00ff00`| sifinit and some shit finished, proceeding to wipeUserMem...
`syshook.c` | `sysLoadElf();`          | ![white](https://img.shields.io/badge/%20-White-ffffff) | `0xFFFFFF`| ERROR
   


