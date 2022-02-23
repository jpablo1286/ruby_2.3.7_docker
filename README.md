## Dockefile for compile and run ruby 2.3.7
this is a repositorie written to help applications that requires ruby 2.3.7 as helper meanwhile those are migrated to a higher version.

* **make help:** run this commantd to show a help for basic options
* **make terminal:** build an image compiling **ruby 2.3.7**, mounts **src** directory as volume, and launch a terminal to run ruby application in **src** folder
* **make build:** build an image compiling **ruby 2.3.7**
* **nake version:** builds an image, then launch a container showing the current ruby version.