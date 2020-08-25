This is a Windows config tool for the FlexTrak balloon tracker board.  It configures the tracker using a serial link e.g. FTDI-TTL cable.  The tracker can be powered from the cable if it supplies 5V with enough current, otherwise use batteries.

It provides simple controls to set the LoRa parameters (frequency, bandwidth etc.).  APRS will be added soon.

Capabilities
------------

- Allows the payload ID, LoRa frequency, bandwidth etc. to be set
- Displays temperature, GPS etc from the tracker
- Displays packets being sent over LoRa

Caveats and Limitations
-----------------------

- No APRS yet.
- It's a Windows-only program

Connections
-----

The FTDI cable should come with a 6-pin header; remove all wires and re-insert as so:

1 - Red - 5V
2
3 - Black 0V
4 - Green Rx
5 - White Tx
6

Connect this to the FlextTrak board such that pin 1 connects to the pin nearest the edge, at the end close to the GPS antenna.  Use a pin header through the FlexTrak to connect the board and the connector.

Build
-----

The program was developed using Delphi 2009 with the TMS Async component for serial comms.  I've not tried but it should build fine with older or new Delphi versions, so long as that component is installed.

History
-------

<u>25/8/2020	V1.0</u>

- First release.

  
