# Tomcat SSL APR
This release is a stable release of Tomca SSL with APR.
## Operations included in the image:
1. Setup dependency to build APR library.
2. Build APR library
3. Generate SSL certificate
4. Setup tomcat server SSL with APR.  

## Pull docker image
````
docker pull kelvinli/dockerbuild:tomcatssl-jsse-1.0
````

## Start the container.
```
docker run -i -t <container_id>
```