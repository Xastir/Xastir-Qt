
More to come as we get to work on this project.


**Building the main Qt4 code on Linux:**

`$ ./build.sh`

It will create the "xastir-qt" executable in the "build" directory.


**Building the callpass executable on Linux:**

`$ cd callpass`

`$ ./bootstrap.sh`

`$ mkdir -p build`

`$ cd build`

`$ ./configure`

`$ make`

It will create the "callpass" executable in the "build" directory. Use it by typing "./callpass <callsign>" to get your passcode for Xastir.


