FROM alpine:3.15.0

RUN apk add --no-cache \
    bash \
    curl \
    docker \
    openssl \
    wget

# Install kubectl
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.20.7/bin/linux/amd64/kubectl && \
    chmod +x ./kubectl && \
    mv ./kubectl /usr/local/bin/kubectl

# Install Kubernetes in Docker (kind)
RUN curl -Lo ./kind https://github.com/kubernetes-sigs/kind/releases/download/v0.11.1/kind-linux-amd64 && \
    chmod +x ./kind && \
    mv ./kind /usr/local/bin/kind

COPY install_script.sh /
COPY kind.yaml /root/

ENV PATH="${PATH}:/root"

ENTRYPOINT ["/bin/bash", "/install_script.sh"]
