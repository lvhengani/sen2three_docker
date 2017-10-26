# SEN2THREE DOCKER

This is a docker-container for running sen2three. Sen2Three generates level-3 sentinel 2 scenes from the level-2a scenes.
The level-2a are generated with Sen2Cor. More information on sen2three can be found at [here](http://step.esa.int/main/third-party-plugins-2/sen2three/). 

## Using the container

Assuming that you have git installed on your PC, clone the repository into your local machine.

~~~
git clone git@github.com:lvhengani/sen2three_docker.git
~~~

Create a directory `~/Documents/s2_processing/temp_sen2three`. If you want to place the files elsewhere, edit the path in provided `.env` file.


To build the image, run the command:

~~~
./build
~~~

To test if the build was successfull, run the command:

~~~
./l3process
~~~

or

~~~
./l3process --help
~~~

In the directory `~/Documents/s2_processing/temp_sen2three`, create a subdirectory. Preferably, use the UTM tileid of your sentinel-2 level-2A files to name your subdirectories  i.e `34HCH`. Place all the sen2cor pre-processed (Level-2A) scenes in the sub-directory, Please note that scenes must also be of the same UTM tileid, it is not advisable to mix scenes with differect UTM tileids. Run sen2three as shown below: 

~~~
./l3process 34HCH --resolution 20
~~~

Always make sure that the name of your sub-directory i.e UTM tleid `34HCH` is the first commandline argument as shown above. More information on sen2three can be found at [here](http://step.esa.int/main/third-party-plugins-2/sen2three/).

## Known Issues

* Still testing

