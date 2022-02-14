###
 # @Description: 进入docker命令
 # @Author: zzt
 # @Date: 2022-02-14 17:36:25
 # @LastEditTime: 2022-02-14 17:38:51
 # @LastEditors: zzt
 # @Reference: 
### 
sudo docker run -it \
--privileged \
--mount type=bind,source="$PWD/g3d",target=/root/project \
-e NVIDIA_DRIVER_CAPABILITIES=all \
--device=/dev/dri \
-p80:22 \
--gpus all cuda9:1.0