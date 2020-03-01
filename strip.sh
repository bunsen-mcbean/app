#!/bin/bash

shopt -s extglob

rm -rf jamovi.app/!(Contents)
rm -rf jamovi.app/Contents/!(Frameworks|Info.plist|MacOS|Resources|bin)
rm -rf jamovi.app/Contents/MacOS/!(jamovi|jamovi-engine|python|R|Electron)
rm -rf jamovi.app/Contents/Resources/!(env.conf|default_app.asar|electron.asar|icon.icns|jamovi|lib|modules|site.pyc|*.so)
rm -rf jamovi.app/Contents/Resources/jamovi/!(version|examples|server|client)
rm -rf jamovi.app/Contents/Resources/jamovi/.git
rm -rf jamovi.app/Contents/Resources/jamovi/client/!(assets|*.html|*.js|*.css)
rm -rf jamovi.app/Contents/Resources/jamovi/server/!(jamovi)
rm -rf jamovi.app/Contents/Resources/jamovi/server/jamovi/!(__pycache__|__init__.py|*.so|server)
rm -rf jamovi.app/Contents/Resources/lib/!(python3.8|python38.zip)

find jamovi.app -name '.DS_Store' -type f -delete
dot_clean jamovi.app
xattr -cr jamovi.app
