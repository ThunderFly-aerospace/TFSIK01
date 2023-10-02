# TFSIK01A - Dual Antenna diversity UAV telemetry modem

The TFSIK01A is probably the first open-source hardware design of a UAV modem with [SiK firmware](https://github.com/ThunderFly-aerospace/SiK). It uses the latest Si1000 series chip Si1060 which is equipped with [Si4463 EZRadioPRO Transceiver](https://www.silabs.com/documents/public/data-sheets/Si4463-61-60-C.pdf).

## Hardware

![TFSIK01A bottom view](doc/img/TFSIK01_1.jpg)
![TFSIK01A top view](doc/img/TFSIK01_3.jpg) 



## Parameters and features


   * Very small size
   * Light weight (under 20 grams without antenna)
   * Transparent serial link
   * Air data rates up to 250kbps
   * MAVLink protocol framing and status reporting
   * Frequency hopping spread spectrum (FHSS)
   * Adaptive time division multiplexing (TDM)
   * Support for listen before talk (LBT) and Adaptive Frequency Agility (AFA)
   * Configurable duty cycle
   * Built-in error correcting code (can correct up to 25% data bit errors)
   * Demonstrated range of several kilometres with a small whip antenna
   * [Open source firmware]((https://github.com/ThunderFly-aerospace/SiK))
   * AT commands for local radio configuration
   * RT commands for remote radio configuration

  * Supported protocol: MAVLink 2
  * Supported bands: 433MHz, 868 MHz. (Other frequencies are available upon request)
  * Modem chip: Si4463
    * User-selectable output power up to +20 dBm (100mW) (The maximum legally allowed power output)
    * RX Sensitivity -124 dBm @ 1000 bps FSK
  * MIMO 2x2 RX/TX: Two antenna diversity
    * Two separated [MCX connectors](https://en.wikipedia.org/wiki/MCX_connector) RX and TX on the each connector
  * Automatic antenna switching
  * Interface: Pixhawk compatible JST-GH UART link
  * RF switch: SPDT High Power UltraCMOS 10 MHz - 3 GHz
  * RF input amplifier
    * 50MHz to 4000MHz, GaAs pHEMT SPF5189
    * Noise Figure 0.60dB
    * High noise immunity OIP3 39.5dBm
    * Gain 18.7dB
  * Filter: SAW AFS selected for specific ISM band
  * Power: +5V 500 mA.
  * Mass: 18g (Including the housing)
  * Dimensions: 55x10x35 mm (housing dimensions)

The above parameters are guaranteed only in case of the use of a proper RF antenna matched for a given frequency band. When using an improper antenna with a radio modem (VSWR above 1.5:1), there may arise several issues that could affect the performance, efficiency, and reliability of the system. Here is a simplified list: 

  - **Reduced Range** - The most immediate problem would be a reduced operating range. The antenna is critical for transmitting and receiving signals effectively. An improper antenna may result in weaker signals, thereby limiting the distance over which the modem can communicate.
  - **Signal Degradation** - Poorly matched antennas could degrade the quality of the transmitted and received signals. This can lead to higher bit error rates, packet loss, and data corruption, impacting the reliability of the system.
  - **Increased Interference** - The wrong type or tuning of antenna might pick up or transmit on unintended frequencies, causing interference with other systems or devices. This could be particularly problematic in crowded or jammed frequency bands.
  - **Power Imbalance** - The impedance mismatch between the antenna and the modem can result in a portion of the signal being reflected back into the modem. This can potentially damage the modem’s internal components over time due to the stress of components.
  - **Non-Compliance** - Using an improper antenna may lead to non-compliance with regulatory standards, which could result in legal issues or fines. Regulations often specify the types of antennas that can be used with particular types of modems or in specific frequency bands.
  - **Energy Inefficiency** - A mismatched antenna can be energy-inefficient, drawing more power than necessary to achieve a given range or data rate. This could be particularly problematic in battery-powered applications.
  - **Increased Latency** - Poor signal strength and quality could also result in increased latency due to packet retransmissions, affecting real-time applications like telemetry transmission.
  - **Difficulty in Troubleshooting** - An improper antenna can introduce a myriad of issues that can be hard to diagnose. This could result in increased downtime and maintenance costs, as engineers would need to spend additional time identifying and resolving the issues.

## Usage 

### UAV command and control

The TFSIK modem is intended to be used at UAV as an "in the air" part of the communication link. For the ground control station, the [TFMODEM](https://github.com/ThunderFly-aerospace/TFMODEM01) is supposed to be used.  
The reasons for the difference in the air and ground control station units are design tradeoffs.  
For the example, the ground control unit needs a very reliable, therefore there is a large interface USB connector, to the ground control station computer. 
The same connector is impractical to be used in the UAV part. Similar restrictions apply to the RF filters, antenna connectors, etc. To resolve that, we decided to use different implementations of the ground station. 

### ROS2 long-range wireless datalink

SiK firmware is commonly used in radio modems, particularly in the fields of unmanned aerial vehicles (UAVs) and robotics. When integrated into a Robot Operating System (ROS) or ROS2 environment, SiK technology offers several advantages. It provides reliable and long-range communication, which is crucial for both indoor and outdoor robotic applications. The low latency of TFSIK01 modems ensures real-time responsiveness, a critical factor in robotics. These modems are highly configurable, offering users the flexibility to tailor the system according to specific needs. Additionally, their compatibility with various communication protocols makes them easy to integrate into existing ROS and ROS2 systems. 

## FAQ

### How can I connect it to a PC/mobile/tablet? 

The easiest solution is the use of [TFUSBSERIAL01 gadget](https://github.com/ThunderFly-aerospace/TFUSBSERIAL01) to create a virtual UART/Serial link from a USB-A or USB-C connector. 

## Where I could get it?  

The device can be purchased from [ThunderFly s.r.o.](https://www.thunderfly.cz/). Contact us by email at info@thunderfly.cz for a commercial quotation.
