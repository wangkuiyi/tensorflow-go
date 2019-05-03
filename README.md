This repository shows how to install related libraries and tools into a Docker image and build TensorFlow program in Go in a Docker container.

To build the Docker image

```bash
docker build -t tf:go .
```

To run the demo Go program

```bash
docker run --rm -it -v $PWD:/work -w /work tf:go go run hello_tf.go
```

You should see some log messages and a line `Hello from TensorFlow version 1.13.1`.

- https://www.tensorflow.org/install/lang_go
- https://www.tensorflow.org/install/lang_c
