# Kind Debugging

Repository to debug https://github.com/kubernetes-sigs/kind/issues/2638

```
git clone https://github.com/agardnerIT/kinddebugging
cd kinddebugging
docker build -t kindkeptn:wip .
```
A docker image is built then when that runs, it first executes the `install_script.sh` which builds the cluster.

Run container:
```
docker run -it --rm --name keptnwip -v /var/run/docker.sock:/var/run/docker.sock kindkeptn:wip
```
