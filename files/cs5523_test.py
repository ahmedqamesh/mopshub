import time
from random import randint
import logging
import numpy as np
#Monitoring ADC
try:
    import spidev
except Exception as e:
    logging.exception(e)
    logging.warning('spidev could not be imported')

from additional_scripts import logger_setup
from hardware_control.multiplexer_config import MPconfig


class CICreadout(MPconfig):
    """
    This class is going to readout the ADC on the CIC Card.
    Which CIC card and which Bus can be defined through the configuration of the address bits in MPconfig
    ==> important !!!! device 0 corresponds to can_interface 1
    ==> important !!!! device 1 corresponds to can_interface 0
    """

    def __init__(self):
        MPconfig.__init__(self)
        self.channel_value = ("UH", "IMON", "VCAN", "Temperature")
        self.__address_byte = [0x80, 0x88, 0x90, 0x98, 0x80]
        self.__bus = 1

        self.logger = logging.getLogger('mopshub_log.cic_adc_readout')

    def cs5523_init(self, device, mp_channel, can_interface):

        self.logger.info(f'CIC Channel {mp_channel} - ADC initialization')
        self.mp_switch(mp_channel, can_interface)
        spi = spidev.SpiDev()

        try:
            spi.open(self.__bus, device)
            spi.max_speed_hz = 5000
            self.logger.info(f'Connected successful to SPI Bus {self.__bus} Device {device}')
        except Exception as spi_error:
            self.logger.exception(spi_error)
            self.logger.error(f'Can not open connection to SPI Bus {self.__bus} Device {device}')
            return None

        for i in range(0, 15):
            spi.writebytes([0xFF])
        spi.writebytes([0xFE])

        spi.close()

    def cs5523_reset(self, device, mp_channel, can_interface):

        self.logger.info(f'CIC Channel {mp_channel} - ADC reset')
        self.mp_switch(mp_channel, can_interface)
        spi = spidev.SpiDev()

        try:
            spi.open(self.__bus, device)
            spi.max_speed_hz = 5000
            self.logger.info(f'Connected successful to SPI Bus {self.__bus} Device {device}')
        except Exception as spi_error:
            self.logger.exception(spi_error)
            self.logger.error(f'Can not open connection to SPI Bus {self.__bus} Device {device}')
            return None

        self.logger.info("Resetting ADC")
        spi.writebytes([0x03, 0x00, 0x00, 0x80])  # reset
        time.sleep(0.1)
        spi.writebytes([0x03, 0x00, 0x00, 0x00])  # reset rs bit
        time.sleep(0.1)
        adc_out = spi.xfer2([0x0B, 0x00, 0x00, 0x00])  # read RV bit (not cleared)
        if adc_out[2] == 64:
            self.logger.info("RV bit was written. Reset of ADC was successful")
        time.sleep(0.1)
        adc_out = spi.xfer2([0x0B, 0x00, 0x00, 0x00])  # read if RV bit was cleared
        if adc_out[2] == 0:
            self.logger.info("RV bit is cleared after reading")

        spi.close()

    def cs5523_configuration(self, device, mp_channel, can_interface):

        self.logger.info(f'CIC Channel {mp_channel} - ADC configuration')
        self.mp_switch(mp_channel, can_interface)
        spi = spidev.SpiDev()

        try:
            spi.open(self.__bus, device)
            spi.max_speed_hz = 5000
            self.logger.info(f'Connected successful to SPI Bus {self.__bus} Device {device}')
        except Exception as spi_error:
            self.logger.exception(spi_error)
            self.logger.error(f'Can not open connection to SPI Bus {self.__bus} Device {device}')
            return None

        self.logger.info("Writing configuration register to determine the number of used CSRs setups")
        self.logger.info("Command byte: 0x30, Data: 0x00, 0x30, 0x00 ==> Configuring to 4 CSRs setups")
        spi.writebytes([0x03, 0x00, 0x30, 0x00])
        time.sleep(0.1)
        self.logger.info("Read register to confirm configuration, Command: 0x0B")
        adc_out = spi.xfer2([0x0B, 0x00, 0x00, 0x00])
        if adc_out[2] == 48:
            self.logger.info("Configuration register are written successful")
        else:
            self.logger.error("Configuration of config register failed!")

        spi.close()

    def cs5523_write_csrs(self, device, mp_channel, can_interface):

        self.logger.info(f'CIC Channel {mp_channel} - ADC setup register configuration')
        self.mp_switch(mp_channel, can_interface)
        spi = spidev.SpiDev()

        try:
            spi.open(self.__bus, device)
            spi.max_speed_hz = 5000
            self.logger.info(f'Connected successful to SPI Bus {self.__bus} Device {device}')
        except Exception as spi_error:
            self.logger.exception(spi_error)
            self.logger.error(f'Can not open connection to SPI Bus {self.__bus} Device {device}')
            return None

        self.logger.info("Configure CSRs for readout")
        self.logger.info("Command byte: 0x05, Data: 0x00, 0xB0, 0x8B, 0x10, 0xB1, 0x8B")
        spi.writebytes([0x05, 0x00, 0xB0, 0x8B, 0x10, 0xB1, 0x8B])
        time.sleep(0.1)
        self.logger.info("Read CSRs register to confirm configuration")
        adc_out = spi.xfer2([0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00])
        if adc_out[1] == 0 and adc_out[2] == 176 and adc_out[3] == 139 and adc_out[4] == 16 and adc_out[5] == 177 and adc_out[6] == 139:
            self.logger.info("CSRs register are written successful")

        spi.close()

    def cs5523_calibration(self, device, mp_channel, can_interface):

        self.logger.info(f'CIC Channel {mp_channel} - ADC calibration')
        self.mp_switch(mp_channel, can_interface)
        spi = spidev.SpiDev()
        try:
            spi.open(self.__bus, device)
            spi.max_speed_hz = 5000
            self.logger.info(f'Connected successful to SPI Bus {self.__bus} Device {device}')
        except Exception as spi_error:
            self.logger.exception(spi_error)
            self.logger.error(f'Can not open connection to SPI Bus {self.__bus} Device {device}')
            return None

        self.logger.info("Offset calibration, Command byte: 0x85")
        spi.writebytes([0x81, 0x00, 0x00, 0x00])
        time.sleep(0.1)
        self.logger.info("Gain calibration, Command byte: 0x86")
        spi.writebytes([0x82, 0x00, 0x00, 0x00])
        time.sleep(0.1)
        spi.writebytes([0x85, 0x00, 0x00, 0x00])
        time.sleep(0.1)
        spi.writebytes([0x86, 0x00, 0x00, 0x00])

        spi.close()

    def read_adc(self, device, mp_channel, can_interface):
        self.logger.info(f'CIC Channel {mp_channel} - ADC readout')
        self.mp_switch(mp_channel, can_interface)
        spi = spidev.SpiDev()

        try:
            spi.open(self.__bus, device)
            spi.max_speed_hz = 5000
            self.logger.info(f'Connected successful to SPI Bus {self.__bus} Device {device}')
        except Exception as spi_error:
            self.logger.exception(spi_error)
            self.logger.error(f'Can not open connection to SPI Bus {self.__bus} Device {device}')
            return None

        adc_result = []
        time.sleep(0.1)
        self.logger.info("Read ADC channels:")
        for address in self.__address_byte:
            adc_out = spi.xfer2([address, 0x00, 0x00, 0x00, 0x00])
            print(adc_out)
            if adc_out[4] == 224 or adc_out[4] == 228 or adc_out[4] == 232:
                adc_result.append(round(((adc_out[2] * 256 + adc_out[3]) * 0.03814697 / 1000), 3))
                time.sleep(0.1)
            else:
                v_ntc = round(((adc_out[2] * 256 + adc_out[3]) * 0.03814697 / 1000), 3)
                r_ntc = v_ntc * (20 / 4.75)
                adc_result.append(round((298.15 / (1 - (298.15 / 3435) * np.log(10 / r_ntc))) - 273.15, 3))
                time.sleep(0.1)
        del adc_result[0]

        spi.close()
        self.logger.info("ADC Read out finished")
        self.logger.info(adc_result)
        spi.close()
        return adc_result

    def cs5523_startup(self, device, mp_channel, can_interface):
        self.cs5523_init(device, mp_channel, can_interface)
        self.cs5523_reset(device, mp_channel, can_interface)
        self.cs5523_configuration(device, mp_channel, can_interface)
        self.cs5523_write_csrs(device, mp_channel, can_interface)
        self.cs5523_calibration(device, mp_channel, can_interface)

    # def dummy_read(self):
    #     # for testing
    #     result = []
    #     for i in range(0, len(self.__address_byte)):
    #         result.append(randint(0, 100))
    #     self.logger.info('ADC CIC readout finished')
    #     return result


test = CICreadout()
test.cs5523_startup(0, 7, 1)
test.read_adc(0, 7, 1)
time.sleep(1)
test.read_adc(0, 7, 1)
time.sleep(1)
test.read_adc(0, 7, 1)
time.sleep(1)
test.read_adc(0, 7, 1)
time.sleep(1)
