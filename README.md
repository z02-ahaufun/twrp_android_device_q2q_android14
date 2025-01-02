# TWRP Device Tree for Samsung Galaxy Z Fold 3 (SM-F926B)

## First time install instructions

- Unlock your bootloader
- Download the TWRP recovery and disabled [vbmeta](/prebuilt/vbmeta.tar)
- Reboot to download mode
- Put the TWRP Recovery Tar for your device on Odin in the AP slot and vbmeta.tar in USERDATA slot and click start
- Reboot to recovery via recovery key combo (Vol up + power + USB connected)
- Disable encryption
- Go to Advanced > Terminal, type: multidisabler
If vendor complain about free space left on device, will attempt to resize vendor. and it ask to - Run multidisabler again
- Type: multidisabler again. will see - Finished. when done
- Go back to Wipe > Format Data > type yes
- Reboot to recovery
- Reboot to system
- Enjoy

## Credits

[@shadow-of-leaf](https://forum.xda-developers.com/m/shadow-of-leaf.5965480/)\
[@afaneh92](https://forum.xda-developers.com/m/afaneh92.4770483/)\
[@ianmacd](https://forum.xda-developers.com/m/ianmacd.7187684/)\
[@twistedumbrella](https://forum.xda-developers.com/m/twistedumbrella.593514/)
