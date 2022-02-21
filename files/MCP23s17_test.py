import logging
import time

from additional_scripts import logger_setup
from hardware_control.multiplexer_config import MPconfig
#Power Control ADC
try:
    import spidev
except ImportError:
    logging.error(ImportError)
    logging.warning('RPI GPIO could not be imported')


class PEconfig(MPconfig):

    def __init__(self):
        self.__CE = 36
        self.__Data = 32
        self.__Res = 33

        self.__bus = 1
        self.spi = spidev.SpiDev()

        MPconfig.__init__(self)

        self.locked_by_user = [False for _ in range(8)]
        self.locked_by_sys = [False for _ in range(8)]
        self.current_status_table = [0, 0, 0, 0, 0, 0, 0, 0]

        self.logger = logging.getLogger('mopshub_log.power_enable_config')

    def set_power_off(self):
        for i in range(0, len(self.current_status_table)):
            self.power_off(i)

    def check_status(self, channel):
        if channel in range(0, 8):
            __channel = channel
        elif channel in range(25, 33):
            table_offset = 25
            __channel = channel - table_offset
        else:
            self.logger.error(f'Could not identify channel {channel}')
            return 0

        return self.current_status_table[__channel], self.locked_by_sys[__channel], self.locked_by_user[__channel]

    def spi_connect(self):

        try:
            self.spi.open(self.__bus, 2)
            self.spi.max_speed_hz = 5000000
            self.logger.info(f'Connected successful to SPI Bus: {self.__bus}, CS: 2')
        except Exception as e:
            self.logger.exception(e)
            self.logger.error(f'Can not open connection to SPI Bus: {self.__bus}, CS: 2')
            return False

    def mcp23s17_configure(self, channel):

        if self.spi_connect() is False:
            return 0

        if channel in range(0, 8):
            __channel = channel
        elif channel in range(25, 33):
            table_offset = 25
            __channel = channel - table_offset
        else:
            self.logger.error(f'Could not identify channel {channel}')
            return 0

        try:
            self.mp_switch(__channel, self.__bus)
            self.spi.writebytes([0x40, 0x00, 0x00])
            self.spi.writebytes([0x40, 0x01, 0x00])
            self.spi.writebytes([0x40, 0x13, 0x00])
            self.spi.writebytes([0x40, 0x0C, 0xFE])
            self.spi.writebytes([0x40, 0x0D, 0xFF])
        except Exception as e:
            self.logger.exception(e)


    def power_on(self, channel, set_flag=None):

        if self.spi_connect() is False:
            return 0

        if channel in range(0, 8):
            __channel = channel
        elif channel in range(25, 33):
            table_offset = 25
            __channel = channel - table_offset
        else:
            self.logger.error(f'Could not identify channel {channel}')
            return 0

        try:
            if bool(self.locked_by_sys[__channel]) is False:
                if bool(self.locked_by_user[__channel]) is False or set_flag is not None:
                    try:
                        self.mp_switch(__channel, self.__bus)
                        self.spi.writebytes([0x40, 0x12, 0x01])
                    except Exception as e:
                        self.logger.exception(e)
                    self.current_status_table[__channel] = 1
                    if set_flag is not None:
                        self.locked_by_user[__channel] = set_flag
                    self.logger.info(f"Power Channel {__channel} is now ON")
                    print(f"Power Channel {__channel} is now ON")
                    return 1
                else:
                    self.logger.error(f'Power of Channel {__channel} was locked by user')
            else:
                self.logger.error(f'Power of Channel {__channel} was locked by sys while start up')
        except Exception as e:
            self.logger.exception(e)
            return None

    def power_off(self, channel, set_flag=None):

        if self.spi_connect() is False:
            return 0

        if channel in range(0, 8):
            __channel = channel
        elif channel in range(25, 33):
            table_offset = 25
            __channel = channel - table_offset
        else:
            self.logger.error(f'Could not identify channel {channel}')
            return 0

        try:
            if bool(self.locked_by_sys[__channel]) is False:
                if bool(self.locked_by_user[__channel]) is False or set_flag is not None:
                    try:
                        self.mp_switch(__channel, self.__bus)
                        self.spi.writebytes([0x40, 0x12, 0x00])
                    except Exception as e:
                        self.logger.exception(e)
                    self.current_status_table[__channel] = 1
                    if set_flag is not None:
                        self.locked_by_user[__channel] = set_flag
                    self.logger.info(f"Power Channel {__channel} is now ON")
                    print(f"Power Channel {__channel} is now ON")
                    return 1
                else:
                    self.logger.error(f'Power of Channel {__channel} was locked by user')
            else:
                self.logger.error(f'Power of Channel {__channel} was locked by sys while start up')
        except Exception as e:
            self.logger.exception(e)
            return None


power_signal = PEconfig()
power_signal.mcp23s17_configure(7)
power_signal.power_on(7)
