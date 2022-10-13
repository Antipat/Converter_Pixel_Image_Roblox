from directkeys import PressKey, ReleaseKey, W, enter, space, NP_0, NP_1, NP_2, NP_3, NP_4, NP_5, NP_6, NP_7, NP_8, NP_9
import numpy as np
from PIL import Image
import cv2
from time import*

window = np.array(Image.open('fff.jpg'))#.convert('L'))
#print(window)
im =cv2.cvtColor(window, cv2.COLOR_BGR2GRAY)
print(len(im[0]))

#a = input("Введите число")
sleep(3)
for s in range (len(im)):
    for c in range(len(im[s])):
        for i in range (len(str(im[s][c]))):
            if str(im[s][c])[i] == "0":
                PressKey(NP_0)
                sleep(0.001)
                ReleaseKey(NP_0)
            elif str(im[s][c])[i] == "1":
                PressKey(NP_1)
                sleep(0.001)
                ReleaseKey(NP_1)
            elif str(im[s][c])[i] == "2":
                PressKey(NP_2)
                sleep(0.001)
                ReleaseKey(NP_2)
            elif str(im[s][c])[i] == "3":
                PressKey(NP_3)
                sleep(0.001)
                ReleaseKey(NP_3)
            elif str(im[s][c])[i] == "4":
                PressKey(NP_4)
                sleep(0.001)
                ReleaseKey(NP_4)
            elif str(im[s][c])[i] == "5":
                PressKey(NP_5)
                sleep(0.001)
                ReleaseKey(NP_5)
            elif str(im[s][c])[i] == "6":
                PressKey(NP_6)
                sleep(0.001)
                ReleaseKey(NP_6)
            elif str(im[s][c])[i] == "7":
                PressKey(NP_7)
                sleep(0.01)
                ReleaseKey(NP_7)
            elif str(im[s][c])[i] == "8":
                PressKey(NP_8)
                sleep(0.001)
                ReleaseKey(NP_8)
            elif str(im[s][c])[i] == "9":
                PressKey(NP_9)
                sleep(0.001)
                ReleaseKey(NP_9)
            sleep(0.01)
            #elif im[s][c][i] == " ":
        sleep(0.01)
        PressKey(space)
        sleep(0.01)
        ReleaseKey(space)
    PressKey(enter)       
    ReleaseKey(enter)
    #sleep(0.1)
PressKey(W)       
ReleaseKey(W)
                                   
        










        
