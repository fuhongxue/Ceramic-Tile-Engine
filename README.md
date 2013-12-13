## Dusk Engine ##

The Dusk Engine (concept version named CoronaTiled; pre-beta named Ceramic Tile Engine) is to be a fully featured game engine for [Corona SDK](http://www.coronalabs.com). It's designed to help you "weed out" extra code for level creation and let you focus on the game mechanics, instead of the level makeup.  

It's written on a powerful base, but interfaced with simple, intuitive commands that are easy to learn (when they even exist!). Adding Dusk to your project barely makes a ripple on your code. You can keep all the normal Corona function calls you're used to: `map:scale()`, `layer:insert()`, and the such; you don't have to use separate engine functions to do normal task. Dusk is meant to incorporate seamlessly into your project's flow.

### What's Here ###

This folder (download the ZIP and unpack) includes...
* The Dusk Engine itself (`Dusk/*`)
* A folder of engine tests (`tests/*`)
* A maze demo (`mapdata/*` and `bob.lua`) - the source code for it is in `bob.lua`
* A tileset I packed from the set by www.kenney.nl (`tileset.png` with corresponding @2x version, plus all the tilesets in the `tests` folder)
* A demo map that uses most every feature of Dusk (`everything`, both the JSON and TMX versions)
* A list of things left to be done (`TODO.txt`)
* A folder that will hold plugins (`Plugins/*`)
* Some graphics used in the Bob demo (`graphics/*`)
* Corona/Lua files to run the sample (`main.lua`, `config.lua`, `build.settings`)

### Install ###

The engine itself is found (strangely enough!) in the folder named "Dusk". It's what you'll use for your personal projects. To use Dusk in your project, copy the folder into your project's **root** directory and `require` it like so:
```Lua
local dusk = require("Dusk.Dusk")
```
You won't have to worry about any other files in the Dusk folder, unless you want to take a peek at the code. They're all used internally by the engine itself.