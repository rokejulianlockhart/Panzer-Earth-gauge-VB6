# Panzer-Earth-gauge-VB6
 A FOSS Earth VB6 Widget for Windows.
 
The Panzer Earth VB6 gauge is a simple utility displaying a rotating earth in a
dieselpunk fashion on your desktop. It can be resized and placed anywhere on 
your desktop. It uses minimal resources and helps give your desktop a 
dieselpunk make-over. 

This widgets functionality is limited as it is just a template for widgets yet
to come, however, it can be increased in size, animation speed can be changed, 
opacity/transparency may be set as to the users discretion. The widget can 
also be made to hide for a pre-determined period.
 
Right-click on the widget to display the function menu, mouse hover over the 
widget and press CTRL+mousewheel up/down to resize. It works well on Windows XP 
to Windows 11.

This version was developed on Windows 7 using 32 bit VisualBasic 6 as a FOSS 
project creating a WoW64 widget for the desktop. 

It is open source to allow easy configuration, bug-fixing, enhancement and 
community contribution towards free-and-useful VB6 utilities that can be created
by anyone. The first step was the creation of this template program to form the 
basis for the conversion of other desktop utilities or widgets. A future step 
is new VB6 widgets with more functionality and then hopefully, conversion of 
each to RADBasic/TwinBasic for future-proofing and 64bit-ness. 

This utility is one of a set of steampunk and dieselpunk widgets. That you can 
find here on Deviantart: https://www.deviantart.com/yereverluvinuncleber/gallery

I do hope you enjoy using this utility and others. Your own software 
enhancements and contributions will be gratefully received if you choose to 
contribute.

CREDITS:

I have really tried to maintain the credits as the project has progressed. If I 
have made a mistake and left someone out then do forgive me. I will make amends 
if anyone points out my mistake in leaving someone out.

MicroSoft in the 90s - MS built good, lean and useful tools in the late 90s and 
early 2000s. Thanks for VB6.

Olaf Schmidt    - This tool was built using the RichClient RC5 Cairo wrapper for 
VB6. Specifically the components using transparency. Thanks for the massive 
effort Olaf in creating Cairo counterparts for all VB6 native controls and 
giving us access to advanced features on controls such as transparency.

Shuja Ali @ codeguru for his settings.ini code.

ALLAPI.COM        For the registry reading code.

Rxbagain on codeguru for his Open File common dialog code without a dependent 
OCX - http://forums.codeguru.com/member.php?92278-rxbagain

si_the_geek       for his special folder code

Elroy on VB forums for the balloon tooltips

Harry Whitfield for his quality testing, brain stimulation and being an 
unwitting source of inspiration.


LICENCE AGREEMENTS:

Copyright � 2023 Dean Beedell

In addition to the GNU General Public Licence please be aware that you may use 
any of my own imagery in your own creations but commercially only with my 
permission. In all other non-commercial cases I require a credit to the 
original artist using my name or one of my pseudonyms and a link to my site. 
With regard to the commercial use of incorporated images, permission and a 
licence would need to be obtained from the original owner and creator, ie. me.


Tested on :
           ReactOS 0.4.14 32bit on virtualBox
           Windows 7 Professional 32bit on Intel - wip
           Windows 7 Ultimate 64bit on Intel
           Windows 7 Professional 64bit on Intel - done
           Windows XP SP3 32bit on Intel - wip
           Windows 10 Home 64bit on Intel - done
           Windows 10 Home 64bit on AMD
           Windows 11 64bit on Intel - done

Dependencies:

Requires a PzEarth folder in C:\Users\<user>\AppData\Roaming\ 
eg: C:\Users\<user>\AppData\Roaming\PzEarth
Requires a settings.ini file to exist in C:\Users\<user>\AppData\Roaming\PzEarth
The above will be created automatically by the compiled program when run for the 
first time.

Uses just one OCX control extracted from Krools mega pack (slider). This is part 
of Krools replacement for the whole of Microsoft Windows Common Controls found 
in mscomctl.ocx. The slider control OCX file is shipped with this package.

* CCRSlider.ocx

This OCX will reside in the program folder. The program reference to this OCX is 
contained within the supplied resource file Panzer Earth Gauge.RES. It is 
compiled into the binary.

* OLEGuids.tlb

This is a type library that defines types, object interfaces, and more specific 
API definitions needed for COM interop / marshalling. It is only used at design 
time (IDE). This is a Krool-modified version of the original .tlb from the 
vbaccelerator website. The .tlb is compiled into the executable.
For the compiled .exe this is NOT a dependency, only during design time.

From the command line, copy the tlb to a central location (system32 or wow64 
folder) and register it.

COPY OLEGUIDS.TLB %SystemRoot%\System32\
REGTLIB %SystemRoot%\System32\OLEGUIDS.TLB

In the VB6 IDE - project - references - browse - select the OLEGuids.tlb

* Uses the RC5 Cairo wrapper from Olaf Schmidt.

During development the RC5 components need to be registered. These scripts are 
used to register. Run each by double-clicking on them.

RegisterRC5inPlace.vbs
RegisterVBWidgetsInPlace.vbs

During runtime on the users system, the RC5 components are dynamically 
referenced using modRC5regfree.bas which is compiled into the binary.

* SETUP.EXE - The program is currently distributed using setup2go, a very useful 
and comprehensive installer program that builds a .exe installer. Youll have to 
find a copy of setup2go on the web as it is now abandonware. Contact me
directly for a copy. The file "install PzEarth 0.1.0.s2g" is the configuration 
file for setup2go. When you build it will report any errors in the build.

* HELP.CHM - the program documentation is built using the NVU HTML editor and 
compiled using the Microsoft supplied CHM builder tools (HTMLHelp Workshop) and 
the HTM2CHM tool from Yaroslav Kirillov. Both are abandonware but still do
the job admirably. The HTML files exist alongside the compiled CHM file in the 
HELP folder.

 Project References:

           VisualBasic for Applications
           VisualBasic Runtime Objects and Procedures
           VisualBasic Objects and Procedures
           OLE Automation
           vbRichClient5