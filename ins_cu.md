
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

