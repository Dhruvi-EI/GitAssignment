import sys
import serial
import serial.tools.list_ports as port_list
import glob


def port_detection():
    result = []
    if sys.platform.startswith('win'):
        ports = list(port_list.comports())
        for port in ports:
            try:
                if "USB Serial" in port.description:
                    result.append(port.name)
            except(OSError, serial.SerialException):
                pass
    elif sys.platform.startswith('linux') or sys.platform.startswith('cygwin'):
    # this excludes your current terminal "/dev/tty"
        ports = glob.glob('/dev/tty[A-Za-z]*')
        ports = list(port_list.comports())
        for port in ports:
            try:
                if "USB Serial" in port.description:
                    result.append(port.name)
            except(OSError, serial.SerialException):
                pass
    elif sys.platform.startswith('darwin'):
        ports = glob.glob('/dev/tty.*')
        for port in ports:
            try:
                if "USB Serial" in port.description:
                    result.append(port.name)
            except(OSError, serial.SerialException):
                pass
    else:
        raise EnvironmentError('Unsupported platform')

    for port in ports:
        try:
            if "Silicon" in port.description:
                s = serial.Serial(port.name)
                s.close()
                result.append(port.name)
        except (OSError, serial.SerialException):
            pass
    return result


if __name__ == '__main__':
    print(port_detection())