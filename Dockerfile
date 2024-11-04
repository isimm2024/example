#Base Image 
FROM nginx:alpine
#Copy index.html from native FS (relative to the build context)  to container FS
COPY html/index.html  /usr/share/nginx/html/
#Expose a port when a container is started from the image ( useful with -P option)
EXPOSE 80 
# process to run when start the container
CMD ["nginx","-g","daemon off;"]
