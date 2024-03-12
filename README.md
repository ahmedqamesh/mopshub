## About MOPS-HUB
MOPS-HUB is an FPGA based interface. Its main task is the aggregation of monitoring data between the MOPS chips (installed at the vicinity of the detector modules) and the DCS computer.
Beside that, MOPS-HUB will monitor information per CAN bus (voltage/current) and send it to the DCS computer as part of the data stream. In addition, it will have a full power control over the connected CAN buses.<br/>

## Installation
1. Clone the project. 
2. MOPS-HUB measurement board project uses third party developed libraries (e.g. [ipbus-firmware](https://github.com/ipbus/ipbus-firmware)) for several porpuses: 
One has to include these libraries sub-modules.<br/> 
a. Use `git submodule init`  to initialize the Submodules.<br/>
b. Use `git submodule update`  to fetch all the data from that project and check out the appropriate commit listed in your project.<br/>
**Note**: you can alternatively clone the project with its submodules `git submodule update --init --recursive`

## Publications
[1] [A. Qameshet al, System integration of ATLAS ITK Pixel DCS ASICs, 2023 JINST 18 C05003](https://iopscience.iop.org/article/10.1088/1748-0221/18/05/C05003)<br/>

