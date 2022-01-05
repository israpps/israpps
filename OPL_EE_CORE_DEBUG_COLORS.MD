# EE_CORE COLORS DOCUMENTATION BY EL_ISRA (Matias Israelson) as of 05/01/2022 latest OPL Build
# COLOR NOTES: 
#	if you see a number encased in brackets along the color(ie: [3]). it means that the color blinks the ammount of times you see inside the brackets

```
[padhook.c]
	t_loadELF() 
		Blue green	(0x80FF00) @ SifInitRpc(0); 
		Dark Red	(0x80FF00) @ sbv_patch_disable_prefix_check();
		blue sky	(0xFF8000) @ Modules loading(SIO2MAN, MCMAN, USBD, USBHDFSD), WipeUserMemory(), flushcache(), LoadELF
		orange		(0x0080FF) @ ExecPS2()
		Red			(0x0000FF) @ Post ExecPS2()
	IGR_Thread()
		white		(0xFFFFFF) @ SifInitRpc(0);
		blue sky	(0xFF8000) @ oplIGRShutdown(0);
		red			(0x0000FF) @ IOP Reset, Remove_Kernel_Hooks(), InitializeTLB(), GetCop0(25)
		green		(0x00FF00) @ Stopping GSM (if active)
		blue		(0xFF0000) @ Stopping PS2RD (if active)
		yellow		(0x00FFFF) @ SifIopSync()
		pink		(0xFF80FF) @ SifInitRpc(), SifInitIopHeap(), LoadFileInit(), sbv_patch_enable_lmb()
		dark blue	(0x800000) @ LoadOPLModule(OPL_MODULE_ID_RESETSPU), InGameScreenshot() (If enabled)
		dark green	(0x008000) @ SifExitIopHeap(), LoadFileExit(), SifExitRpc()
		red			(0x0000FF) @ oplIGRShutdown()
	Install_PadOpen_Hook()
		purple		(0x800080) @ PadOpen pattern search
		dark green	(0x008000) @ PadOpen patches
		black		(0x000000) @ END OF FUNCTION
[iopmgr.c]
	New_Reset_Iop()
		purple		(0xFF00FF) @ FUNCTION START
		orange		(0x00A5FF) @ ResetIopSpecial(NULL, 0);
		yellow		(0x00FFFF) @ ResetIopSpecial(&arg[10], arglen - 10); (only if arglen is larger than 0)
		black		(0x000000) @ END OF FUNCTION
[main.c]
	eecoreInit();
		blue		(0xff0000) @ Before SifExitRpc(); and FUNCTION END
[igs_api.c]
	FindEmptyArea();
		green[1]	(0x00FF00) @ FOUND
		Orange[1]	(0x0066FF) @ NOT FOUND
	PixelSize();
		red[2]		(0x0000FF) @ Reached function end
	Screenshot()
		Light Yellow(0xCCFFFF) @ FUNCTION START
		red[2]		(0x0000FF) @ if ((sbw < 1) || (sbw > 32))
		red[3]		(0x0000FF) @ if ((height < 64) || (height > 1080))
		Yellow Fade Out		   @ Transfer image to host
		red fade out 			
	ConvertColors32()
		Red Fade Out		   @ LOOP END
	ConvertColors24()
		Green Fade Out		   @ LOOP END
	ConvertColors16()
		Blue Fade Out		   @ LOOP END
	SaveTextFile()
		orange		(0x0099FF) @ FUNCTION START
		black		(0x000000) @ FUNCTION END
	SaveBitmapFile()
		purpleviolet(0x990066) @ FUNCTION START
		red[6]		(0x0000FF) @ Sequential numbering feature reached screenshot 255
		red[4]		(0x0000FF) @ Error creating file
		red[5]		(0x0000FF) @ writing the BMP Header didn´t return a value of 2
		red[5]		(0x0000FF) @ Writing the rest of the data didn´t return a value of 52
		red[5]		(0x0000FF) @ Written data not equal to buffer length
		red[5]		(0x0000FF) @ Written data not equal to buffer length (same as before, but for Interlace Mode)
		gray fadeout(0xFFFFFF) @ end of data writing loop
		black 		(0x000000) @ END OF FUNCTION
	InGameScreenshot()
		midnightblue(0x660033) @ Module Loading (SIO2MAN, MCMAN)
		blue[1]		(0xFF0000) @ END OF FUNCTION
[syshook.c]
	sysLoadElf()
		green		(0x00ff00) @ sifinit and some shit finished, proceeding to wipeUserMem \
		white       (0xFFFFFF) @ ERROR
```
