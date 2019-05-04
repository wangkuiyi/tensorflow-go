hello_tf : hello_tf.cc tf_utils.o
	g++ -std=c++11 hello_tf.cc tf_utils.o -o hello_tf -ltensorflow 

tf_utils.o : tf_utils.cpp
	g++ -c -std=c++11 tf_utils.cpp -o tf_utils.o
