Kyotronic-85 and related portable computers
===========================================

This directory contains the following fonts:

6x8 fonts:
- `kyotronic-85.yaff`: Kyocera Kyotronic 85 and Tandy TRS-80 model 100
- `nec-pc8201.yaff`: NEC PC-8201 (Japanese version)
- `nec-pc8201a.yaff`: NEC PC-8201A (International version)
- `tandy-200.yaff`: Tandy 200 and Tandy 102
- `olivetti-m10-us.yaff`: Olivetti M10 (US version)
- `olivetti-m10-uk.yaff`: Olivetti M10 (UK version)

other fonts:
- `trs80-dvi-7x8.yaff`: Tandy TRS-80 Disk/Video Interface 7x8 font
- `trs80-dvi-8x8.yaff`: Tandy TRS-80 Disk/Video Interface 8x8 font


A note on character mappings
----------------------------

The glyphs have been mapped to Unicode codepoints with the help of 
a Tandy-200 mapping created by `hackerb9`.
I have erred on the side of not providing a codepoint for glyphs where no 
obvious match was found. For the graphical glyphs in these sets, no 
documentation was found to determine the glyph designer's intentions as to 
their meaning.

If you have documentation about the meaning or contemporary use of these 
glyphs, please get in touch.


Olivetti M10 national versions
------------------------------

The Olivetti M10 came in five different national versions. Each had a 
different keyboard and a different character map. I have included the US
and UK versions, for which I had access to original character sets.
Furthermore, the Italian version is documented in the 
[Italian-language operations guide](https://archive.org/details/m10guidaoperativa/page/n179/)
and some of the mappings of the German version are remarked upon at 
[Retrochallenge 2016/01](https://www.masswerk.at/rc2016/01/). These sources
are consistent with the assumption that these versions used the same 
mappings as documented in the 
[BASIC guide for the Olivetti M20](https://archive.org/details/m20linguaggiobasic/page/n425/)

The following code points differ:

|       |`23`|`40`|`5b`|`5c`|`5d`|`60`|`7b`|`7c`|`7d`|`7e`|
|-------|----|----|----|----|----|----|----|----|----|----|
|US     |  # |  @ | [  |  \ |  ] | \` |  { | \| |  } |  ~ |
|Italy  |  £ |  § | °  |  ç |  é |  ù |  à |  ò |  è |  ì |
|France |  £ |  à | °  |  ç |  § | \` |  é |  ù |  è |  ¨ |
|UK     |  £ |  @ | [  |  \ |  ] | \` |  { | \| |  } |  ~ |
|Germany|  # |  § | Ä  |  Ö |  Ü | \` |  ä |  ö |  ü |  ß |

Notes:
- All glyphs are contained in the US set; only the codepoint mappings differ. 
- These mappings agree with the DEC National Replacement Character Sets.
 
