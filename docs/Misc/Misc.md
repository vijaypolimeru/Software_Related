# Really Miscellaneous Info...

---
### Where to see `pip` installed packages

To find the location of `pip` installed packages please type `python -m pip show package-name` example `python -m pip show mkdocs`. In Ubuntu `python -m` is not necessary just `pip show package-name` is sufficient. Follwoing lines will printed
in the command window

```
> python -m pip show mkdocs
Name: mkdocs
Version: 1.2.0
...
Location: /usr/local/lib/python2.7/site-packages

```

---
### Download YouTube Video (All videos from playlist)
To download YouTube Video (or All videos from playlist), follow the following steps

1. Install `youtube-dl` using `sudo -H pip install --upgrade youtube-dl` in Ubuntu or `python -m pip install --upgrade youtube-dl --user` in Windows 7 or more. Wait till the installation is over
2. Copy paste the following script in any Python IDE and Run the code, makesure you are connected to internet, otherwise the program throws some errors (***Note*** - To download multiple videos from playlist, please paste the playlist link in the video link position)
```python
from __future__ import unicode_literals
import youtube_dl

ydl_opts = {}
with youtube_dl.YoutubeDL(ydl_opts) as ydl:
    ydl.download(['https://www.youtube.com/watch?v=dy59i6XMnTI'])

```
or
```python
from __future__ import unicode_literals
import youtube_dl
import os

ydl_opts = {}
os.chdir('C:/Users/Desktop') # Location to save download video files
with youtube_dl.YoutubeDL(ydl_opts) as ydl:
    ydl.download(['https://www.youtube.com/watch?v=n06H7OcPd-g'])
```
---



### Unit Weight of Concrete

* Mass Density of Plain Concrete ($kg/m^3$) = 2300 $kg/m^3$
* Weight Density of Plain Concrete ($kN/m^3$) = 23 $kN/m^3$
* Mass Density of Reinforced Concrete ($kg/m^3$) = 2500 $kg/m^3$
* Weight Density of Reinforced Concrete ($kN/m^3$) = 25 $kN/m^3$
* Mass Density of Steel Rebar ($kg/m^3$) = 7850 $kg/m^3$
* Weight Density of Steel Rebar ($kN/m^3$) = 78.5 $kN/m^3$
---
### Acceleartion Due to gravity

* In $m/s^2$ = 9.8067 $m/s^2$
* In $ft/s^2$ = 32.1740 $ft/s^2$
* In $in/s^2$ = 386.40 $in/s^2$ (i.e. 12*32.1740 $in/s^2$)

---
### Units (Imp Conversions factors)

#### Length

* 1 ft = 12 inches = 304.8 mm = 30.48 cm
* 1 inch = 25.4 mm = 2.54 cm
* 1 Mile = 1.60934 Km
* 1 Yard = 3 ft = 36 inches = 914.4 mm = 91.44 cm

#### Mass, Force and Pressure

* 1 Pound-Force (lbf) = 4.448222 N
* 1 Kgf (or Kg) = 9.81 N $\implies$ 1000 Kgs (or 1 tonne) = 9.81 kN 
* 1 Ksi = 6.8947 MPa
* 1 Pound = 0.4536 Kg (Multiply LHS by 386.40 and RHS by 9.81 we will get corresponding force units)
* 1 Psi = 0.00689475 Mpa

