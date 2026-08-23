
# Exiftool

# Rename Music
exiftool -v '-filename<Unknown Artist - Untitled - ${Filename}.%e' '-filename<${Artist;s!/!_!g} - Untitled.%e' '-filename<Unknown Artist - ${Title;s!/!_!g}.%e' '-filename<${Artist;s!/!_!g} - ${Title;s!/!_!g}.%e' *.m4a

# Rename pictures
exiftool -v '-FileName<CreateDate' -d '%Y%m%d-%H%M%S%%-03.c.%%e' .

