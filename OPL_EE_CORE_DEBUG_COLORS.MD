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
`padhook.c` | `IGR_Thread()`           | ![White](https://img.shields.io/badge/%20-White%20-ffffff)	       | `0xFFFFFF`|SifInitRpc(0);
`padhook.c` | `IGR_Thread()`           | ![Blue Sky](https://img.shields.io/badge/%20-Blue%20Sky%20-0080ff)    | `0xFF8000`| oplIGRShutdown(0);
`padhook.c` | `IGR_Thread()`           | ![Red](https://img.shields.io/badge/%20-Red%20-ff0000)                | `0x0000FF`| IOP Reset, Remove_Kernel_Hooks(), InitializeTLB(), GetCop0(25)
`padhook.c` | `IGR_Thread()`           | ![green](https://img.shields.io/badge/%20-Green%20-00ff00)            | `0x00FF00`| Stopping GSM (if active)
`padhook.c` | `IGR_Thread()`           | ![Blue](https://img.shields.io/badge/%20-Blue%20-0000ff)| `0xFF0000`| Stopping PS2RD (if active)
`padhook.c` | `IGR_Thread()`           | yellow 		| `0x00FFFF`| SifIopSync()
`padhook.c` | `IGR_Thread()`           | pink 			| `0xFF80FF`|  SifInitRpc(), SifInitIopHeap(), LoadFileInit(), sbv_patch_enable_lmb()
`padhook.c` | `IGR_Thread()`           | dark blue 		| `0x800000`| LoadOPLModule(OPL_MODULE_ID_RESETSPU), InGameScreenshot() (If enabled)
`padhook.c` | `IGR_Thread()`           | dark green 		| `0x008000`| SifExitIopHeap(), LoadFileExit(), SifExitRpc()
`padhook.c` | `IGR_Thread()`           | Red 			| `0x0000FF`| oplIGRShutdown()
`padhook.c` | `Install_PadOpen_Hook()` | purple 		| `0x800080`| PadOpen pattern search
`padhook.c` | `Install_PadOpen_Hook()` | dark green 		| `0x008000`| PadOpen patches
`padhook.c` | `Install_PadOpen_Hook()` | black 			| `0x000000`| END OF FUNCTION
`iopmgr.c`  | `New_Reset_Iop()`        | purple	         	| `0xFF00FF`| FUNCTION START
`iopmgr.c`  | `New_Reset_Iop()`        | orange	         	| `0x00A5FF`| ResetIopSpecial(NULL, 0);
`iopmgr.c`  | `New_Reset_Iop()`        | yellow	         	| `0x00FFFF`| ResetIopSpecial(&arg[10], arglen - 10); (only if arglen is larger than 0)
`iopmgr.c`  | `New_Reset_Iop()`        | black	         	| `0x000000`| END OF FUNCTION
`main.c`    | `eecoreInit();`          | blue	         	| `0xff0000`|  Before SifExitRpc(); END OF FUNCTION
`igs_api.c` | `FindEmptyArea();`       | green[1]           	| `0x00FF00`| FOUND
`igs_api.c` | `FindEmptyArea();`       | Orange[1]	        | `0x0066FF`| NOT FOUND
`igs_api.c` | `FindEmptyArea();`       | black	         	| `0x000000`| END OF FUNCTION
`igs_api.c` | `PixelSize();`           | red[2]	         	| `0x0000FF`| Reached function end
`igs_api.c` | `Screenshot()`           | Light Yellow       	| `0xCCFFFF`| FUNCTION START
`igs_api.c` | `Screenshot()`           | red[2]             	| `0x0000FF`| if ((sbw < 1) || (sbw > 32))
`igs_api.c` | `Screenshot()`           | red[3]	         	| `0x0000FF`| if ((height < 64) || (height > 1080))
`igs_api.c` | `Screenshot()`           | Yellow Fade Out	|           | Transfer image to host		
`igs_api.c` | `ConvertColors32()`      | Red Fade Out      	|           | LOOP END		
`igs_api.c` | `ConvertColors24()`      | Green Fade Out     	| `0x00FF00`| LOOP END		
`igs_api.c` | `ConvertColors16();`     | Blue Fade Out      	| `0x00FF00`| LOOP END	
`igs_api.c` | `SaveTextFile();`        | orange             	| `0x0099FF`| FUNCTION START	
`igs_api.c` | `SaveTextFile();`        | black	         	| `0x000000`| FUNCTION END	
`igs_api.c` | `SaveBitmapFile();`      | purpleviolet       	| `0x990066`| FUNCTION START
`igs_api.c` | `SaveBitmapFile();`      | red[6]		 	| `0x0000FF`| Sequential numbering feature reached screenshot 255
`igs_api.c` | `SaveBitmapFile();`      | red[4]		 	| `0x0000FF`| Error creating file
`igs_api.c` | `SaveBitmapFile();`      | red[5]		 	| `0x0000FF`| writing the BMP Header didn´t return a value of 2
`igs_api.c` | `SaveBitmapFile();`      | red[5]		 	| `0x0000FF`| Writing the rest of the data didn´t return a value of 52
`igs_api.c` | `SaveBitmapFile();`      | red[5]		 	| `0x0000FF`| Written data not equal to buffer length
`igs_api.c` | `SaveBitmapFile();`      | red[5]		 	| `0x0000FF`| Written data not equal to buffer length (same as before, but for Interlace Mode)
`igs_api.c` | `SaveBitmapFile();`      | gray fadeout       	| 	    | end of data writing loop
`igs_api.c` | `SaveBitmapFile();`      | black 		 	| `0x000000`| END OF FUNCTION
`igs_api.c` | `InGameScreenshot();`    | midnightblue       	| `0x660033`| Module Loading (SIO2MAN, MCMAN)
`igs_api.c` | `InGameScreenshot();`    | blue[1]            	| `0xFF0000`| END OF FUNCTION
`syshook.c` | `sysLoadElf();`          | green             	| `0x00ff00`| sifinit and some shit finished, proceeding to wipeUserMem...
`syshook.c` | `sysLoadElf();`          | white              	| `0xFFFFFF`| ERROR
   


