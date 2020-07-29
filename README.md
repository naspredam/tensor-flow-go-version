# tensor-flow-go-version

This project is to have a go working with tensorflow.

- Go 1.14
- Tensor flow 1.15.0

It was followed up the documentation https://www.tensorflow.org/install/lang_go

## Local execution

On local, we have to install the tensor for C and also C, and then we can just to:

```
go run hello_tf.go
```

## Docker execution

For docker we have the make file with the task `check-version`. Where we run:

```
make check-version
```

This does:

- build the image from docker/Dockerfile
- run the same command as on the local exection, described above
