# Kind Debugging

Repository to debug https://github.com/kubernetes-sigs/kind/issues/2638


A docker image is built then when that runs, it first executed the `install_script.sh` which builds the cluster.

I build and run this container with:
```
docker run -it --rm --name keptnwip -v /var/run/docker.sock:/var/run/docker.sock kindkeptn:wip
```
