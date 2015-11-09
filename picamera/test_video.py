# import the necessary packages
from picamera.array import PiRGBArray
from picamera import PiCamera
import time
import cv2
import argparse

# construct the argument parse and parse the arguments
ap = argparse.ArgumentParser()
ap.add_argument("-wi", "--width", type=int, default=640, help="image width")
ap.add_argument("-hi", "--height", type=int, default=480, help="image height")
args = vars(ap.parse_args())
#print args 
#print type(args)
x = args.get('width')
#print x
y = args.get('height')
#print y
# initialize the camera and grab a reference to the raw camera capture
camera = PiCamera()
'''video image is based on default 640 x 480 or the values
passed -wi & -hi or --width & --height
These set the camera.resolution 
'''
camera.resolution = (x, y)
camera.framerate = 32
camera.vflip = True
camera.hflip = True
rawCapture = PiRGBArray(camera, size=(x, y))
 
# allow the camera to warmup
time.sleep(0.1)
 
# capture frames from the camera
for frame in camera.capture_continuous(rawCapture, format="bgr", use_video_port=True):
    # grab the raw NumPy array representing the image, then initialize the timestamp
    # and occupied/unoccupied text
    image = frame.array
 
    # show the frame
    cv2.imshow("Frame", image)
    key = cv2.waitKey(1) & 0xFF
 
    # clear the stream in preparation for the next frame
    rawCapture.truncate(0)
 
    # if the `q` key was pressed, break from the loop
    if key == ord("q"):
       break
