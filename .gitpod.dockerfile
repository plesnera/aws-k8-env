FROM gitpod/workspace-full
RUN curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
RUN sudo mv /tmp/eksctl /usr/local/bin
RUN curl -o kubectl https://amazon-eks.s3.us-west-2.amazonaws.com/1.17.7/2020-07-08/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl
RUN sudo mv ./kubectl /usr/local/bin
RUN echo 'export PATH=$PATH:$HOME/bin' >> ~/.bash_profile