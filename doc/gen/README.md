# PCB

Board size: 50.0x30.0 mm (1.97x1.18 inches)

- This is the size of the rectangle that contains the board
- Thickness: 1.6 mm (63 mils)
- Material: FR4
- Finish: HAL lead-free
- Layers: 2
- Copper thickness: 35 µm

Solder mask: TOP / BOTTOM

- Color: Green

Silk screen: TOP / BOTTOM

- Color: White


Stackup:

| Name                 | Type                 | Color            | Thickness [µm]| Material        | Er        | Loss tan     |
|----------------------|----------------------|------------------|---------------|-----------------|-----------|--------------|
| F.SilkS              | Top Silk Screen      |                  |               |                 |           |              |
| F.Mask               | Top Solder Mask      | Green            |            10 |                 |           |              |
| F.Cu                 | copper               |                  |            35 |                 |           |              |
| dielectric 1         | core                 |                  |          1510 | FR4             |       4.5 |        0.020 |
| B.Cu                 | copper               |                  |            35 |                 |           |              |
| B.Mask               | Bottom Solder Mask   | Green            |            10 |                 |           |              |
| B.Paste              | Bottom Solder Paste  |                  |               |                 |           |              |
| B.SilkS              | Bottom Silk Screen   |                  |               |                 |           |              |

# Important sizes

Clearance: 0.2 mm (8 mils)

Track width: 0.2 mm (8 mils)

- By design rules: 0.2 mm (8 mils)

Drill: 0.3 mm (12 mils)

- Vias: 0.5 mm (20 mils) [Design: 0.3 mm (12 mils)]
- Pads: 0.3 mm (12 mils)
- The above values are real drill sizes, they add 0.1 mm (4 mils) to plated holes (PTH)

Via: 0.8/0.4 mm (31/16 mils)

- By design rules: 0.4/0.2 mm (16/8 mils)
- Micro via: yes [0.2/0.1 mm (8/4 mils)]
- Buried/blind via: yes
- Total: 236 (thru: 236 buried/blind: 0 micro: 0)

Outer Annular Ring: 0.1 mm (4 mils)

- By design rules: 0.1 mm (4 mils)

Eurocircuits class: 6D
- Using min drill 0.25 mm for an OAR of 0.13 mm


# General stats

Components count: (SMD/THT)

- Top: 1/11 (SMD + THT)
- Bottom: 61/1 (SMD + THT)

Defined tracks:

- 0.2 mm (8 mils)
- 0.3 mm (12 mils)
- 0.4 mm (16 mils)
- 0.5 mm (20 mils)
- 0.6 mm (24 mils)
- 0.8 mm (31 mils)
- 0.86 mm (34 mils)

Used tracks:

- 0.2 mm (8 mils) (83) defined: yes
- 0.3 mm (12 mils) (70) defined: yes
- 0.4 mm (16 mils) (51) defined: yes
- 0.5 mm (20 mils) (33) defined: yes
- 0.6 mm (24 mils) (28) defined: yes
- 0.8 mm (31 mils) (2) defined: yes
- 0.86 mm (34 mils) (49) defined: yes

Defined vias:


Used vias:

- 0.8/0.4 mm (31/16 mils) (Count: 236, Aspect: 2.0 A) defined: no

Holes (excluding vias):

- 0.2 mm (8 mils) (15)
- 0.3 mm (12 mils) (4)
- 3.0 mm (118 mils) (10)

Oval holes:


Drill tools (including vias and computing adjusts and rounding):

- 0.3 mm (12 mils) (15)
- 0.4 mm (16 mils) (4)
- 0.5 mm (20 mils) (236)
- 3.0 mm (118 mils) (10)

Solder paste stats:

Using a paste with 87.75 % alloy, that has an specific gravity for the alloy of 7.4 g/cm³
and 1.0 g/cm³ for the flux. This paste has an specific gravity of  4.15 g/cm³.

The stencil thickness is  0.12 mm.

| Side   | Pads with paste | Area [mm²] | Paste [g] |
|--------|-----------------|------------|-----------|
| Total  |             197 |     184.78 |      0.92 |

Note: this is just an approximation to the theoretical value. Margins of the solder mask and waste aren't computed.



