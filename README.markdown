#THUMP

THUMP is a fork of Tesseract, designed to make a more interesting and exciting game. Tesseract is itself is a mod of Cube 2, a first person shooter with new assets. However, Tesseract, while elegant, is more of an impressive tech demo than a finished game at the moment (I'm sure it will get more content, but it does lack content at this time). This is what THUMP aims to fix.


##Features
As of the 13th July, THUMP adds to Tesseract:
* a new weapon; a machine gun.
* a deathmatch and team deathmatch mode
* finite health and ammo
* and cubescript aliases for health, ammo, frags, deaths and more (allowing you to create softcoded HUDs)

New maps, models and textures are also to follow.

Tesseract added new rendering features to Cube 2 such as:

* deferred shading
* omnidirectional point lights using cubemap shadowmaps
* perspective projection spotlight shadowmaps
* orthographic projection sunlight using cascaded shadowmaps
* HDR rendering with tonemapping and bloom
* real-time diffuse global illumination for sunlight (radiance hints)
* volumetric lighting
* screen-space ambient occlusion
* screen-space reflections and refractions for water and glass (use as many water planes as you want now!)
* screen-space refractive alpha cubes
* deferred MSAA/CSAA, subpixel morphological anti-aliasing (SMAA 1x, T2x, S2x, and 4x), FXAA, and temporal AA

##System Requirements
As I don't have a Mac or a Linux box that can run this, everything has currently been oriented around Windows.
The system requirements for Windows are:
* a video card supporting OpenGL 3 or above.
* 2GB RAM
* 1GB hard drive space
* Intel Core 2 Duo or better

It may work on other machines, but I haven't tried it.

##Binaries
There is a binary available for Windows now!

##Source Code
The source is licenced under the ZLIB licence.

2014 Byron Kellett

This software is provided 'as-is', without any express or implied
warranty. In no event will the authors be held liable for any damages
arising from the use of this software.

Permission is granted to anyone to use this software for any purpose,
including commercial applications, and to alter it and redistribute it
freely, subject to the following restrictions:

   1. The origin of this software must not be misrepresented; you must not
   claim that you wrote the original software. If you use this software
   in a product, an acknowledgment in the product documentation would be
   appreciated but is not required.

   2. Altered source versions must be plainly marked as such, and must not be
   misrepresented as being the original software.

   3. This notice may not be removed or altered from any source
   distribution.

The source has been compiled on Windows 7 and Ubuntu Gnome 14.04. It comes with a VS project and a Code::Blocks project. I reccomend the C::B project file.

### Compiling on Windows

1. Download the TDM-GCC compiler. On the download page, make sure you select the second option.
2. Download the version of Code::Blocks without MinGW.
3. Install TDM-GCC as normal and make you leave everything as is.
4. Install Code::Blocks.
5. Try opening the project. If it works, it's all done. If it doesn't work, make sure you followed the instructions. If it still is not working, email me at contact@almightybyron.co.uk


### Compiling on Linux
1. Open the terminal (on Ubuntu, press CTRL-ALT-T).
2. cd to the source directory and type make.
3. You should get a few errors. "sudo apt-get install" all the things it asks you to.
4. When it has finally compiled, copy tess_client and tess_server into ../bin_unix/
5. Open ../thump in the terminal. It should open THUMP and it should work.

##TODO
* get health and ammo pickups to work.
* more maps.
* more models.
* more textures.
* more server side commands.
