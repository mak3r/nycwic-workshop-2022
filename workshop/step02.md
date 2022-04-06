## Create a simple docker image to run an app in a container
**Here we will create a container image that gives us the python REPL**

**NOTE** Normally you would store your project in a source code repository 
(i.e. github) so that the changes we make over time are captured and can be 
reviewed, managed and rolled back if necessary. 
We are not going to use git today

Create a directory to work from
```ctr:developer
if [ ! -d ~/app ]; then
    mkdir ~/app
fi
```

`cd` into our app directory
```ctr:developer
cd ~/app
```

Create the spec for our container image
```ctr:developer
cat << EOF > ~/app/Dockerfile
FROM python:3.7

RUN apt update && apt upgrade -y

# -u flag flushes the print buffers so we can get the details in
# the container logs
ENTRYPOINT ["python3", "-u"]

EOF
```

Take a look at the file you just created. You can edit it directly with tools like `vi` or `nano`
```ctr:developer
cat Dockerfile
```

Build the container image
```ctr:developer
docker build -t my-python:3.7 .
```

**NOTE:** We used the name my-python to reference this container image. You can use 
any name that is suitable to your purposes. We will reference this container 
image by name when we run it.

Run the container image in interactive mode
```ctr:developer
docker run -it --rm my-python:3.7
```

You can now type python commands. 
```ctr:developer
import os
```
```ctr:developer
os.listdir()
```

Type `exit()` to leave the REPL and the container will exit
```ctr:developer
exit()
```



### Learn more
https://docs.docker.com/engine/reference/builder/



[NEXT](./step03.md)