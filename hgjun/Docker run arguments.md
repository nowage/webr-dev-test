Docker run arguments
=======================================

Run a command in a new container

**Usage**  
```
docker run [OPTIONS] IMAGE [COMMAND][ARG...]
```


**Options**  
| name            | shorthand | default | description                              |
| :-------------- | :-------: | :-----: | :--------------------------------------- |
| --add-host      |           |         | Add a custom host-to-IP mapping (host:ip) |
| --attach        |    -a     |         | Attach to STDIN, STDOUT or STDERR        |
| --detach        |    -d     |  false  | Run container in background and print container ID |
| --env           |    -e     |         | Set environment variables                |
| --env-file      |           |         | Read in a file of environment variables  |
| --help          |           |  false  | Print usage                              |
| --hostname      |    -h     |         | Container host name                      |
| --init          |           |  false  | Run an init inside the container that forwards signals and reaps processes |
| --interactive   |    -i     |  false  | Keep STDIN open even if not attached     |
| --ip            |           |         | Container IPv4 address (e.g. 172.30.100.104) |
| --name          |           |         | Assign a name to the container           |
| --pid           |           |         | PID namespace to use                     |
| --publish       |    -p     |         | Publish a container’s port(s) to the host |
| --publish-all   |    -P     |  false  | Publish all exposed ports to random ports |
| --read-only     |           |  false  | Mount the container’s root filesystem as read only |
| --restart       |           |   no    | Restart policy to apply when a container exits |
| --rm            |           |  false  | Automatically remove the container when it exits |
| --tty           |    -t     |  false  | Allocate a pseudo-TTY                    |
| --user          |    -u     |         | Username or UID (format: <name           |
| --volume        |    -v     |         | Bind mount a volume                      |
| --volume-driver |           |         | Optional volume driver for the container |
| --volumes-from  |           |         | Mount volumes from the specified container(s) |
| --workdir       |    -w     |         | Working directory inside the container   |



**References**  
<https://docs.docker.com/engine/reference/commandline/run/>
<http://pyrasis.com/book/DockerForTheReallyImpatient/Chapter20/28/>