# Create the certs directory
mkdir ./certs/root ./certs/nginx

docker build ./gencert/. -t shuttlepub/gencert:latest

# Build the gencert image and run it
if (sys host | get name) == "Windows" {
    docker run --mount "type=bind,source=.\\certs,target=/certs" -it shuttlepub/gencert:latest
} else {
    docker run --mount "type=bind,source=./certs,target=/certs" -it shuttlepub/gencert:latest
}
