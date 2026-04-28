* Title card - always required
= Tutorial 0
*
*################################################
* Problem setup
* Problem type and option card - always required
100 new transnt
*
* Time advancement
*num   end  dt-min dt-max ctl   min-edit maj-edit restarts
201    20.0 1.0e-6 0.01   00000 100      1000     10000
*
301 reynf 103060000
302 reyng 103060000
303 prandf 103060000
304 prandg 103060000
*################################################
* Components
*================================================
*Time-dependent volume, leftBC
1010000 leftBC tmdpvol
*
* Geometry
*num    Area        Length  Volume Varphi Theta ElCh Roughn. Dh     ctl
1010101 0.159592907 1.0     0.0    0.0    0.0   0.0  0.0     0.2032 0000001
*
* Initialization card
1010200 003
*       time P     T
1010201 0.0  1.502e6 425.0
*
*================================================
*Time-dependent junction, inJ
1020000 inJ tmdpjun
*
* Geometry
*num    from      to        Area    ctl
1020101 101010002 103010001 0.0     00000000
*
* Initial conditions
1020200 1
*num    time mflow-l mflow-v intf.
1020201 0.0  0.0     0.0     0.0
1020202 10.0 200.0   0.0     0.0
*================================================
*Pipe, conPipe
*
1030000 conPipe pipe
*
* Geometry
*num    NumVols
1030001 9
*
*num    Area         nv
1030101 0.159592907  4
1030102 0.079796453  5
1030103 0.159592907  9
*
*num    Length       nv
1030301 0.25         4
1030302 0.2          5
1030303 0.25         9
*
*       theta        nv
1030601 0.0          9
*
*num    roughness Dh     nv
1030801 0.0       0.2032 4
1030802 0.0       0.1016 5
1030803 0.0       0.2032 9
*
* Control
*num    tlpvbfe nv
1031001 0000000 9
*
*num    jefvcahs nj
1031101 00000100 8
*
* Initial Conditions
*num    ctl P     T           nv
1031201 003 0.5e6 300.0 0 0 0 9
*
*num    vel-l vel-v intf. nj
1031301 0.0   0.0   0.0   8
*
*================================================
*Single Junction, outJ
1080000 riteJ sngljun
*
* Geometry
*num    from      to        Area   FLOSS  RLOSS  ctl
1080101 103090002 199010001 0.0    0.0    0.0    00000100
*
* Initial Conditions
*num    ctl vel-l vel-v intf.
1080201 0   0.0   0.0   0.0
*
*================================================
*Time-dependent volume, riteBC
1990000 riteBC tmdpvol
*
* Geometry
*num    Area        Length  Volume Varphi Theta ElCh Roughn. Dh     ctl
1990101 0.159592907 1.0     0.0    0.0    0.0   0.0  0.0     0.2032 0000001
*
* Initialization card
1990200 003
*       time P     T
1990201 0.0  0.5e6 300.0
*
*================================================
*
* Problem termination period - always required
.
