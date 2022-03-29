echo Start gen File
echo Gen Bootloader Setting
nrfutil settings generate --family NRF52 --application application.hex --application-version 0 --bootloader-version 0 --bl-settings-version 1 bootloader_setting.hex

echo Merge file
mergehex --merge bootloader.hex s132_nrf52_7.2.0_softdevice.hex bootloader_setting.hex application.hex --output output.hex

echo Erase
nrfjprog -f NRF52 -e

echo Program and reset
nrfjprog -f NRF52 --program output.hex -r

