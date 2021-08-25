1. log into the server via the ssh command: ```ssh username@ip-address```
2. Then, upload the dataset and the yolo model to remote server via the scp command: ```scp -r /path/to/local/file username@ip-address:/path/to/your/directory```
3. Create the environment needed to train the model on remote server
4. Go to the yolov5 directory, run the script train.sh
