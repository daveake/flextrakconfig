This is a Windows config tool for the FlexTrak balloon tracker board, and other tracker software that uses the same serial protocol.  It configures the tracker using a serial link e.g. FTDI-TTL cable.  The tracker can be powered from the cable if it supplies 5V with enough current, otherwise use batteries.

It provides simple controls to set the LoRa parameters (frequency, bandwidth etc.).



Capabilities
------------

- Allows the payload ID, LoRa frequency, bandwidth etc. to be set
- Displays packets being sent over LoRa
- Works with FlexTrak (Pi Zero board)
- Works with FlexTrack (standalone trackers)

Caveats and Limitations
-----------------------

- It's a Windows-only program
- Not all of my tracker programs support this protocol yet
- Depending on the tracker, some settings do not automatically populate from the tracker

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

<u>26/11/2021	V2.0</u>

- Support for standalone trackers
= Tabbed interface
- Fields populated from tracker
- Checks for attached device type
- Hides tabs according to tracker type
- RTTY section
- TDM settings for LoRa
- Intelligent setting of which fields tracker sends in telemetry
- Cutdown settings
- Calling mode setting
- Prediction settings
- Resizeable window
- Extra box at bottom for latest telemetry
- APRS added

<u>25/8/2020	V1.0</u>

- First release.

  
