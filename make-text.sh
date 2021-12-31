#!/bin/bash
# remove images from source files and add chapter titles
pandoc --lua-filter=remove-images.lua --lua-filter=inlines.lua manuscript/pi-pre.md --to markdown -o text/pi-pre.md
pandoc --lua-filter=remove-images.lua --lua-filter=inlines.lua manuscript/pi-intro.md --to markdown -o text/pi-intro.md
pandoc --lua-filter=remove-images.lua --lua-filter=inlines.lua manuscript/pi-ch01.md extras/cs-minecraft.md extras/cs-star.md extras/bio-sutherland.md --to markdown -o text/pi-ch01.md
pandoc --lua-filter=remove-images.lua --lua-filter=inlines.lua manuscript/pi-ch02.md extras/cs-poet.md extras/cs-windows.md extras/bio-engelbart.md --to markdown -o text/pi-ch02.md
pandoc --lua-filter=remove-images.lua --lua-filter=inlines.lua manuscript/pi-ch03.md extras/cs-ipod.md extras/cs-mouse.md extras/bio-tesler.md --to markdown -o text/pi-ch03.md
pandoc --lua-filter=remove-images.lua --lua-filter=inlines.lua manuscript/pi-ch04.md extras/cs-arduino.md extras/cs-reactable.md extras/bio-atkinson.md --to markdown -o text/pi-ch04.md
pandoc --lua-filter=remove-images.lua --lua-filter=inlines.lua manuscript/pi-ch05.md extras/cs-facebook.md extras/cs-affective.md extras/bio-kay.md --to markdown -o text/pi-ch05.md
pandoc --lua-filter=remove-images.lua --lua-filter=inlines.lua manuscript/pi-ch06.md extras/cs-www.md extras/cs-wikipedia.md extras/bio-nelson.md --to markdown -o text/pi-ch06.md
pandoc --lua-filter=remove-images.lua --lua-filter=inlines.lua manuscript/mi-ch07.md extras/cs-consoles.md extras/cs-unix.md extras/bio-lanier.md --to markdown -o text/mi-ch07.md
pandoc --lua-filter=remove-images.lua --lua-filter=inlines.lua manuscript/mi-ch08.md extras/cs-alto.md extras/bio-kay.md --to markdown -o text/mi-ch08.md
pandoc --lua-filter=remove-images.lua --lua-filter=inlines.lua manuscript/pi-epi.md --to markdown -o text/pi-epi.md
