
{ -----------------------------------------------------------------------------

  A small tool to extract 8x12 bitmap fonts from
  Datapoint 8600 CP/RIM card ROMs

  Compile with the Freepascal Compiler: fpc datapoint-8x12.pas

  Usage: datapoint-8x12 905-008-1.bin Datapoint-8600.draw

----------------------------------------------------------------------------- }

{

This tool designed to extract the font data from the ROM contents of
a Datapoint 8600 machine. Font data is not directly mapped as a character
generator but is read by the "bios" of the machine and stored into the actual
character RAM area. The font is a 8x12 font, but only uppercase characters
were available, with the lowercase characters later loaded by the operating
system (RMS 2.8.J).

The font data is organised as nine bytes for each charater, with the MSB
of these data bytes always 0 for inter-character spacing. Therefore, data exists
for 7x9 bitmaps. Three empty lines are added when loading this font, one line on
top and two lines at the bottom as seen when comparing with the cursor in
the screenshot of the date/time prompt which has all twelve lines set.

Bytes with MSB set denote the place in the character table (when masked with $7F).
Then nine bytes of graphics data follow.

When no place-in-the-character-table byte appears, continue with the next place.

Note that the shape of "," on the screenshot with lowercase letters differs
from the data in the ROM, so this might be a completely different font for which
unfortunately no further data exists.

}

uses sysutils;

function byte2hex(zahl : byte) : string;
const
    hexa : array [0..15] of char = '0123456789ABCDEF';
begin
  byte2hex := hexa[zahl shr 4] + hexa[zahl and 15];
end;

function byte2str(c : byte) : string;
var h : string = '';
var i : integer;
begin
  for i := 7 downto 0 do
  begin
    if (c shr i) and 1 = 1 then h := h + '#' else h := h + '-';
  end;
  byte2str := h;
end;

var binary : file of byte;
    fontfile : text;
    i, k : integer;
    character : array[1..9] of byte;
    asciioffset : integer = 0;

begin
  assign(binary, paramstr(1));
  reset(binary);

  assign(fontfile, paramstr(2));
  rewrite(fontfile);

  seek(binary, $10AF);

  for k := 0 to 73 do
  begin
    read(binary, character[1]);

    if (character[1] and $80) = $80 then
    begin
      asciioffset := character[1] and $7F;
      read(binary, character[1]);
    end;

    for i := 2 to 9 do read(binary, character[i]);

    write(fontfile, byte2hex(asciioffset), ':');

                       writeln(fontfile, #9, byte2str(0));
    for i := 1 to 9 do writeln(fontfile, #9, byte2str(character[i]));
                       writeln(fontfile, #9, byte2str(0));
                       writeln(fontfile, #9, byte2str(0));

    writeln(fontfile);
    inc(asciioffset);
  end;

  close(fontfile);
  close(binary);
end.
