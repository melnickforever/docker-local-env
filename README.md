# docker-lessons

## Lesson 2
Docker Compose
https://docs.docker.com/compose/compose-file/

build - Configuration options that are applied at build time.
 
 context - Either a path to a directory containing a Dockerfile, or a url to a git repository.

 dockerfile - Alternate Dockerfile.
 
 args - Add build arguments, which are environment variables accessible only during the build process.
 First, specify the arguments in your Dockerfile:
 
  ARG buildno

  ARG gitcommithash
  
  RUN echo "Build number: $buildno"

  RUN echo "Based on commit: $gitcommithash"
  
  Then specify the arguments under the build key. You can pass a mapping or a list:
 
  build:
    context: .
    args:
      - buildno=1
      - gitcommithash=cdc3b19
      
      
 extra_hosts - Add hostname mappings at build-time. Use the same values as the docker client --add-host parameter.      

 extra_hosts:
  - "somehost:162.242.195.82"
  - "otherhost:50.31.209.229"
  An entry with the ip address and hostname is created in /etc/hosts inside containers for this build, e.g:

  162.242.195.82  somehost
  50.31.209.229   otherhost

 isolation - Specify a build’s container isolation technology.

 labels - docker label

 network - Set the network containers connect to for the RUN instructions during build.
 
 shm_size - Set the size of the /dev/shm partition for this build’s containers.
           


 

