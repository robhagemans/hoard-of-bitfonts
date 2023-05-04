TRS-80 Model I, Model III, Model 4
==================================

These were taken from character ROMs. 

Model I
-------

The original TRS-80 was later referred to as the Model I.

The Model I set includes the lowercase letters (which were present but not accessible in early models) 
and has been enriched with the 2x3 semigraphic characters that were accessible in the range 0x80-0xBF.

This is the same as the MCM6674 character set, except for 0x5b-0x5e where arrow symbols have been substituted for the more standard ascii symbols in the MCM6674 set. 

The first version of the Model I had a manufacturing error where the lowercase `a` was lifted up by two lines, which was later corrected, resulting in the set included here.

Late versions of the Model I included an updated character set where lowercase characters have descenders below the baseline. 
This set was originally introduced with an official modification kit that made lowercase letters accessible.


Model III and Model 4
---------------------

These models had the same character set. The set included here is the ROM order,
which excludes the 2x3 semigraphics. All glyphs in this set were accessible, with 0x80-0xBF mapped to semigraphics and 0xC0-0xFF mapped to either Kana or digbats, depending on a toggle. 

additionally, a variant character set from a Model 4P character ROM is included. 
This set excludes Kana and includes additional accented Latin characters. 


Color Computer 1/2 & Color Computer 3
=====================================

The CoCo 1 and 2 used the MC-6847 character generator with a characteristic square `O`. 
The set included here derives from a decapped chip.

A later CoCo 2 used the MC-6847T1 which added lowercase and reshaped letters including a round `O`.

The CoCo 3 used a GIME character generator.


Others
======

`trs-80-m2.yaff` is the character set from a TRS-80 Model II ROM.
`trs-80-dt1.yaff` is the caracter set from a TRS-80 DT-1 Data Terminal ROM.
