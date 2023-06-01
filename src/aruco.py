#! usr/bin/env python3

import rospy
import cv2
from cv_bridge import CvBridge
from sensor_msgs.msg import Image

def img_clb(img):
    bridge=CvBridge()
    cv_image =bridge.imgmsg_to_cv2(img,"bgr8")
    #image_processing(cv_image)

def depth_clb(img):
    bridge  = CvBridge()
    dept_image  = bridge.imgmsg_to_cv2(img,desired_encoding="passthrough")
    res = cv2.resize(dept_image,dsize =(1280,720),interpolation = cv2.INTER_CUBIC)
    cv2.imshow("depth",res)
    cv2.waitKey(1)

def image_processing(image):

    cv2.imshow("Image",image)
    cv2.waitKey(1)

def main():

    rospy.init_node("Aruco_Detection",anonymous=False)
    rospy.Subscriber("/camera/color/image_raw",Image,img_clb)
    rospy.Subscriber("/camera/depth/image_rect_raw",Image,depth_clb)
    rospy.spin()

main()