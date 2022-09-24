Epson FX dot matrix printer fonts
=================================

This directory contains fonts for the Epson FX printers. While these
were not extracted from original hardware or firmware, the have been
checked carefully against matrices given in original documentation.
The variants here correspond to different editions of the manual, as 
referenced in the files.

Should you however find any discrepancies with the sources references,
or have access to other versions or sources of these fonts, please do get in
touch.


Character sets
--------------

The characters are stored in ROM in an ASCII-based order, with non-ASCII
characters filling the positions of control characters. The lower 7-bit
block contains the roman slant of the font, while the upper block has
the italic slant.

The printer supported different national character sets, which have some
glyphs reassigned to different code points.

The following code points differ:

|       |`23`|`24`|`40`|`5b`|`5c`|`5d`|`5e`|`60`|`7b`|`7c`|`7d`|`7e`|
|       |`a3`|`a4`|`c0`|`db`|`dc`|`dd`|`de`|`e0`|`fb`|`fc`|`fd`|`fe`|
|-------|----|----|----|----|----|----|----|----|----|----|----|----|
|US     |  # |  $ |  @ | [  |  \ |  ] |  ^ | \` |  { | \| |  } |  ~ |
|Japan  |  # |  $ |  @ | [  |  ¥ |  ] |  ^ | \` |  { | \| |  } |  ~ |
|France |  # |  $ |  à | °  |  ç |  § |  ^ | \` |  é |  ù |  è |  ¨ |
|Germany|  # |  $ |  § | Ä  |  Ö |  Ü |  ^ | \` |  ä |  ö |  ü |  ß |
|UK     |  £ |  $ |  @ | [  |  \ |  ] |  ^ | \` |  { | \| |  } |  ~ |
|Denmark|  # |  $ |  @ | Æ  |  Ø |  Å |  ^ | \` |  æ |  ø |  å |  ~ |
|Sweden |  # |  ¤ |  É | Ä  |  Ö |  Å |  Ü |  é |  à |  ö |  å |  ü |
|Italy  |  # |  $ |  @ | °  |  \ |  é |  ^ |  ù |  à |  ò |  è |  ì |
|Spain  |  ₧ |  $ |  @ | ¡  |  Ñ |  ¿ |  ^ | \` |  ¨ |  ñ |  } |  ~ |


Notes:
- The lower-7 bit mappings are similar but not identical to either the
  ISO-646 variants or the DEC National Replacement Character Sets
 
