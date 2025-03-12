# My code repository for my build of [Ben Eater's 65C02 computer tutorial](https://www.youtube.com/playlist?list=PLowKtXNTBypFbtuVMUVXNR0z1mu7dp7eH)


### Python and Assembily scripts are sorted into folders by video for which they were written for.

- For compiling the Assembly code, I am using the same assembler that Ben used: [Vasm](http://sun.hasenbraten.de/vasm/).
  - Ensure Vasm is included in your PATH variable to ensure the commands work correctly
  - Compile with the syntax `vasm6502_oldstyle -Fbin -dotdir <fileName>`
- For writing to the 65c02, I am using Nectivio's [65C02-Tool](https://github.com/Nectivio/65C02-Tool) which allows for in-circuit programming.
  - Upload the assembled Assembly BIN file to the EEPROM with this command `eeprom-programmer -a 0x08000 <binFilePath>` or `.\eeprom-programmer.exe -a 0x08000 <binFilePath>` depending on your system and console.
  - Just ensure you use the `-a 0x08000` argument so the data will be offset by `0x8000`, as needed for Ben Eater's 6502 computer.
  - You may need to compile the eeprom-programmer.exe executable yourself using VisualStudio, if you use Windows.
- For monitoring the 6502, I am using Nectivio's [65C02-Tool](https://github.com/Nectivio/65C02-Tool).
  - If the [PR](https://github.com/Nectivio/65C02-Tool/pull/2) isn't merged, use my fork of the monitor, as it adds support for viewing the  `ROR`, `ROL` and `LSL` commands, including the `ROR` command that Ben uses in his second video.
  - When you write the program to the Arduino Mega or clones, you may use the default pinout, or you can change the pinout in the `.ino` file you upload.
