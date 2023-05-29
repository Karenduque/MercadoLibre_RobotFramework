import robot.api.logger
import robot.utils.asserts
import os
import sys

def agrega_linea_al_archivo(linea):
    robot.api.logger.info('inicio agrega_linea_al_archivo')
    file = open("articulos.txt", "a")
    file.write(linea)
    file.write("\n")
    file.close()

if __name__ == '__main__':
    args = sys.argv
    globals()[args[1]](*args[2:])
