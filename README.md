# Measuring Brainwaves and Monitoring Behavior
This is my project for Advanced Authentic Research (AAR). Follow the progress of this project on my <a href="http://pugiblog.com/category/science/advanced-authentic-research/" target="_blank">blog</a>. This project uses <a href="https://github.com/openyou/emokit" target="_blank">EmoKit</a> which is an open source driver used to access the Emotiv Device raw data.

![](https://pugiblog.files.wordpress.com/2015/12/section1-epoc.png)

## Usage

1) Download the repository

```
$ git clone https://github.com/nikhiljay/brainwaves.git
```

2) Plug in your <a href="https://emotiv.com" target="_blank">Emotiv</a>'s USB dongle.

3) Find the Serial Number of the Emotiv by downloading HIDAPI.

```
$ git clone https://github.com/signal11/hidapi.git
$ cd hidapi-master
```

4) In the HIDAPI go to the directory that corresponds to your operating system and run: 

```
$ make -f Makefile-manual
```

5) A hidtest file should be created in the same directory. Open the hidtest to run it.

6) The output should be a list of devices that are connected to the computer. Look at the Emotiv device information and copy the Serial Number.

7) In the brianwaves project, go to the emokit directory.

```
$ cd emokit/python/emokit
```

8) Open "emotiv.py" and paste the serial number on line 361 where it says:

```
serial_number=""
```

9) Turn on the <a href="https://emotiv.com" target="_blank">Emotiv</a>.

10) Run the "emotiv.py" file.

```
$ python emotiv.py
```
