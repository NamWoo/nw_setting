
sudo chmod +r libcudnn.so.8.0.3
sudo ln -sf libcudnn.so.8.0.3 libcudnn.so.8
sudo ln -sf libcudnn.so.8 libcudnn.so

sudo ln -sf libcudnn_cnn_infer.so.8.0.3 libcudnn_cnn_infer.so.8
sudo ln -sf libcudnn_adv_infer.so.8.0.3 libcudnn_adv_infer.so.8
sudo ln -sf libcudnn_ops_train.so.8.0.3 libcudnn_ops_train.so.8
sudo ln -sf libcudnn_adv_train.so.8.0.3 libcudnn_adv_train.so.8
sudo ln -sf libcudnn_cnn_train.so.8.0.3 libcudnn_cnn_train.so.8
sudo ln -sf libcudnn_ops_infer.so.8.0.3 libcudnn_ops_infer.so.8


sudo ldconfig



* ref
* https://github.com/yixindu1573/Caffe-Installation-Ubuntu-16.04-cuda-9.0-cudnn-v7
* https://gist.github.com/alien18331/aa93e7ede6b4486cc238fdeb11e4cd72

---

/sbin/ldconfig.real: /usr/local/cuda-10.2/targets/x86_64-linux/lib/libcudnn_cnn_infer.so.8 is not a symbolic link

/sbin/ldconfig.real: /usr/local/cuda-10.2/targets/x86_64-linux/lib/libcudnn_adv_infer.so.8 is not a symbolic link

/sbin/ldconfig.real: /usr/local/cuda-10.2/targets/x86_64-linux/lib/libcudnn_ops_train.so.8 is not a symbolic link

/sbin/ldconfig.real: /usr/local/cuda-10.2/targets/x86_64-linux/lib/libcudnn_adv_train.so.8 is not a symbolic link

/sbin/ldconfig.real: /usr/local/cuda-10.2/targets/x86_64-linux/lib/libcudnn_cnn_train.so.8 is not a symbolic link

/sbin/ldconfig.real: /usr/local/cuda-10.2/targets/x86_64-linux/lib/libcudnn_ops_infer.so.8 is not a symbolic link

/sbin/ldconfig.real: /usr/local/cuda-10.2/targets/x86_64-linux/lib/libcudnn.so.8 is not a symbolic link



/sbin/ldconfig.real: /usr/local/cuda-10.2/targets/x86_64-linux/lib/libcudnn_cnn_infer.so.8 is not a symbolic link

/sbin/ldconfig.real: /usr/local/cuda-10.2/targets/x86_64-linux/lib/libcudnn_adv_infer.so.8 is not a symbolic link

/sbin/ldconfig.real: /usr/local/cuda-10.2/targets/x86_64-linux/lib/libcudnn_ops_train.so.8 is not a symbolic link

/sbin/ldconfig.real: /usr/local/cuda-10.2/targets/x86_64-linux/lib/libcudnn_adv_train.so.8 is not a symbolic link

/sbin/ldconfig.real: /usr/local/cuda-10.2/targets/x86_64-linux/lib/libcudnn_cnn_train.so.8 is not a symbolic link

/sbin/ldconfig.real: /usr/local/cuda-10.2/targets/x86_64-linux/lib/libcudnn_ops_infer.so.8 is not a symbolic link

  sudo ln -sf libcudnn.so.6.0.21 libcudnn.so.6
  sudo ln -sf libcudnn.so.6 libcudnn.so

错误如下：
/sbin/ldconfig.real: /usr/local/cuda-11.0/targets/x86_64-linux/lib/libcudnn.so.8 is not a symbolic link
/sbin/ldconfig.real: /usr/local/cuda-11.0/targets/x86_64-linux/lib/libcudnn_adv_train.so.8 is not a symbolic link
/sbin/ldconfig.real: /usr/local/cuda-11.0/targets/x86_64-linux/lib/libcudnn_ops_infer.so.8 is not a symbolic link
/sbin/ldconfig.real: /usr/local/cuda-11.0/targets/x86_64-linux/lib/libcudnn_cnn_train.so.8 is not a symbolic link
/sbin/ldconfig.real: /usr/local/cuda-11.0/targets/x86_64-linux/lib/libcudnn_adv_infer.so.8 is not a symbolic link
/sbin/ldconfig.real: /usr/local/cuda-11.0/targets/x86_64-linux/lib/libcudnn_ops_train.so.8 is not a symbolic link
/sbin/ldconfig.real: /usr/local/cuda-11.0/targets/x86_64-linux/lib/libcudnn_cnn_infer.so.8 is not a symbolic link
 
解决方案：
sudo ln -sf /usr/local/cuda-11.0/targets/x86_64-linux/lib/libcudnn_adv_train.so.8.0.1 /usr/local/cuda-11.0/targets/x86_64-linux/lib/libcudnn_adv_train.so.8
sudo ln -sf /usr/local/cuda-11.0/targets/x86_64-linux/lib/libcudnn_ops_infer.so.8.0.1 /usr/local/cuda-11.0/targets/x86_64-linux/lib/libcudnn_ops_infer.so.8
sudo ln -sf /usr/local/cuda-11.0/targets/x86_64-linux/lib/libcudnn_cnn_train.so.8.0.1 /usr/local/cuda-11.0/targets/x86_64-linux/lib/libcudnn_cnn_train.so.8
sudo ln -sf /usr/local/cuda-11.0/targets/x86_64-linux/lib/libcudnn_adv_infer.so.8.0.1 /usr/local/cuda-11.0/targets/x86_64-linux/lib/libcudnn_adv_infer.so.8
sudo ln -sf /usr/local/cuda-11.0/targets/x86_64-linux/lib/libcudnn_ops_train.so.8.0.1 /usr/local/cuda-11.0/targets/x86_64-linux/lib/libcudnn_ops_train.so.8
sudo ln -sf /usr/local/cuda-11.0/targets/x86_64-linux/lib/libcudnn_cnn_infer.so.8.0.1 /usr/local/cuda-11.0/targets/x86_64-linux/lib/libcudnn_cnn_infer.so.8


sudo ln -sf libcudnn_cnn_infer.so.8.0.3 libcudnn_cnn_infer.so.8
sudo ln -sf libcudnn_adv_infer.so.8.0.3 libcudnn_adv_infer.so.8
sudo ln -sf libcudnn_ops_train.so.8.0.3 libcudnn_ops_train.so.8
sudo ln -sf libcudnn_adv_train.so.8.0.3 libcudnn_adv_train.so.8
sudo ln -sf libcudnn_cnn_train.so.8.0.3 libcudnn_cnn_train.so.8
sudo ln -sf libcudnn_ops_infer.so.8.0.3 libcudnn_ops_infer.so.8



sudo apt-get install ros-melodic-map-server


nw@hpc01:~/isaac/sdk$ sudo apt-get install -y ros-melodic-amcl ros-melodic-move-base


sudo apt install ros-melodic-dwa-local-planner

