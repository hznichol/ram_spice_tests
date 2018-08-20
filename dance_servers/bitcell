#!/usr/bin/env python2.7
"""
Used to create netlists of bitcells
"""

import sys,os
sys.path.append(os.path.join(sys.path[0],".."))
import globals
from globals import OPTS
import debug

OPTS = globals.OPTS



globals.init_openram("../example_config_freepdk45") #I had to remove the format, options was not working
global verify
import verify

import pbitcell
import tech

def sp_write(cell, sp_name):
    # Write the entire spice of the object to the file
    ############################################################
    # Spice circuit
    ############################################################
    sp = open(sp_name, 'w')

    sp.write("**************************************************\n")
    sp.write("* OpenRAM generated Netlist.\n")
    sp.write("**************************************************\n")        

    usedMODS = list()
    tx.sp_write_file(sp, usedMODS)
    del usedMODS
    sp.close()

debug.info(2, "Bitcell with 1 of each port: read/write, write, and read")
tx = pbitcell.pbitcell(num_readwrite=1,num_write=1,num_read=1)
#sp_write(tx,"multiport_bitcell.sp")

debug.info(2, "Bitcell with 0 read/write ports")
tx = pbitcell.pbitcell(num_readwrite=0,num_write=1,num_read=1)


debug.info(2, "Bitcell with 0 write ports")
tx = pbitcell.pbitcell(num_readwrite=1,num_write=0,num_read=1)
#sp_write(tx,tx.name+".sp")

debug.info(2, "Bitcell with 0 read ports")
tx = pbitcell.pbitcell(num_readwrite=1,num_write=1,num_read=0)
#sp_write(tx,tx.name+".sp")

debug.info(2, "Bitcell with 0 read ports and 0 write ports")
tx = pbitcell.pbitcell(num_readwrite=1,num_write=0,num_read=0)
#sp_write(tx,tx.name+".sp")

debug.info(2, "Bitcell with 2 of each port: read/write, write, and read")
tx = pbitcell.pbitcell(num_readwrite=2,num_write=2,num_read=2)


debug.info(2, "Bitcell with 0 read/write ports")
tx = pbitcell.pbitcell(num_readwrite=0,num_write=2,num_read=2)


debug.info(2, "Bitcell with 0 write ports")
tx = pbitcell.pbitcell(num_readwrite=2,num_write=0,num_read=2)


debug.info(2, "Bitcell with 0 read ports")
tx = pbitcell.pbitcell(num_readwrite=2,num_write=2,num_read=0)


debug.info(2, "Bitcell with 0 read ports and 0 write ports")
tx = pbitcell.pbitcell(num_readwrite=2,num_write=0,num_read=0)


globals.end_openram()


