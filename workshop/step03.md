## The container we created just runs the Python REPL
**The python REPL is interesting and if you are a python developer you can use this in place of env or pyenv solutions to isolate your development environments. This is just the beginning of the utility of containers and doesn't provide any value yet for the bigger picture of container orchestration - we'll get to that later.**

### First lets create a container image to run a webserver

Create a very basic webserver
```ctr:developer
cat << EOF > ~/app/web-server.py
# Python 3 server example
from http.server import BaseHTTPRequestHandler, HTTPServer
import time

hostName = "0.0.0.0"
serverPort = 80

class MyServer(BaseHTTPRequestHandler):
    def do_GET(self):
        self.send_response(200)
        self.send_header("Content-type", "text/html")
        self.end_headers()
        self.wfile.write(bytes("<html><head><title>https://www.womentech.net/</title></head>", "utf-8"))
        self.wfile.write(bytes("<p>Request: %s</p>" % self.path, "utf-8"))
        self.wfile.write(bytes("<body>", "utf-8"))
        self.wfile.write(bytes("<p>This is an example web server.</p>", "utf-8"))
        self.wfile.write(bytes("</body></html>", "utf-8"))

if __name__ == "__main__":        
    webServer = HTTPServer((hostName, serverPort), MyServer)
    print("Server started http://%s:%s" % (hostName, serverPort))

    try:
        webServer.serve_forever()
    except KeyboardInterrupt:
        pass

    webServer.server_close()
    print("Server stopped.")
    
EOF
```

Lets create an alternate dockerfile for the webserver
Create the spec for our container image
```ctr:developer
cat << EOF > ~/app/Dockerfile
FROM python:3.7

RUN apt update && apt upgrade -y

COPY . ws/
WORKDIR ws/

# -u flag flushes the print buffers so we can get the details in
# the container logs
ENTRYPOINT ["python3", "-u"]

CMD ["web-server.py"]

EOF
```

Take a look at the file you just modified. 
```ctr:developer
cat Dockerfile
```

Build the container image with the changes
```ctr:developer
docker build -t py-web-server:3.7 .
```

Run the container but this time, not in interactive mode
```ctr:developer
docker run -d --name web-server -p 8080:80 py-web-server:3.7
```

You can see what containers are currently running with this command
```ctr:developer
docker ps
```

Stop the running container
```ctr:developer
docker stop web-server
```

Remove the stopped container
```ctr:developer
docker rm web-server
```


Let's take a look at what's being served by the container. Paste the link below into another tab in your browser and it will take you to your webserver.
```
http://${vminfo:developer:public_ip}:8080
```

### Learn more
https://pythonbasics.org/webserver/



[NEXT](./step04.md)