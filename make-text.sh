#!/bin/bash
# remove images from source files and add chapter titles
pandoc --lua-filter=remove-images.lua --lua-filter=abstract.lua master/pi-pre.md -o text/pi-pre.md
pandoc --lua-filter=remove-images.lua --lua-filter=abstract.lua master/pi-intro.md -o text/pi-intro.md
pandoc --lua-filter=remove-images.lua --lua-filter=abstract.lua master/pi-ch01.md extras/cs-minecraft.md extras/cs-star.md -o text/pi-ch01.md
pandoc --lua-filter=remove-images.lua --lua-filter=abstract.lua master/pi-ch02.md extras/cs-poet.md extras/cs-windows.md -o text/pi-ch02.md
pandoc --lua-filter=remove-images.lua --lua-filter=abstract.lua master/pi-ch03.md extras/cs-ipod.md extras/cs-mouse.md -o text/pi-ch03.md
pandoc --lua-filter=remove-images.lua --lua-filter=abstract.lua master/pi-ch04.md extras/cs-arduino.md extras/cs-reactable.md -o text/pi-ch04.md
pandoc --lua-filter=remove-images.lua --lua-filter=abstract.lua master/pi-ch05.md extras/cs-facebook.md extras/cs-affective.md -o text/pi-ch05.md
pandoc --lua-filter=remove-images.lua --lua-filter=abstract.lua master/pi-ch06.md extras/cs-www.md extras/cs-wikipedia.md -o text/pi-ch06.md
pandoc --lua-filter=remove-images.lua --lua-filter=abstract.lua master/pi-epi.md -o text/pi-epi.md
