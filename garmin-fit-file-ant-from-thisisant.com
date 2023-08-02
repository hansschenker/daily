The Flexible and Interoperable Data Transfer (FIT) protocol is a format 
designed specifically for the storing and sharing of data that originates from 
- sport, 
- fitness and 
- health devices.  

- compact, 
- interoperable (FIT-compliant device can interpret a FIT file from any other FIT-compliant device)
- extensible.  

This document will describe the FIT file structure and interpretation.

Fit protocol 
-------------
- a set of data storage templates (FIT message definition )
- store information such as user profiles and activity data in files

Fit SDK
--------

enables efficient use of a binary format at the embedded level, to significantly reduce the development effort and allow for 
rapid product development.

Training sensor data
----------------------
information acquired during exercise to an internet database

1 ant sensor measure parameters such as heart rate and running speed
2 data is broadcasted in real time, using interoperable ant data formats (fit file)
3 session events and real time activity data is caollecte and saved into fit file on a display device
4 fit file is transferred to pc using ant file share (ant-fs)

Fit file
------------
The FIT file protocol consists of:
- A file structure
- A global list of FIT messages and FIT, fields together with their defined data types
- Software Development Kit (SDK) to configure target  products and generate the necessary FIT code and libraries

Fit SDK
--------------
The following supplementary documentation and files are provided in the SDK:
- FIT File Types Document
- FIT Global Messages and Fields (Profile .xls) 
- FIT code generator
- FIT to CSV Conversion Tool 
- Reference code examples 
- Example FIT files

