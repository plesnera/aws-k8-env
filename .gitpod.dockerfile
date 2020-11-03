FROM amazon/aws-cli 
RUN yum -y install tar gzip wget
WORKDIR /usr
RUN curl --silent -L "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C bin
RUN curl --silent -o bin/kubectl -L https://amazon-eks.s3.us-west-2.amazonaws.com/1.17.7/2020-07-08/bin/linux/amd64/kubectl
RUN curl --silent -L  https://github.com/kubeflow/kfctl/releases/download/v1.1-rc.1/kfctl_v1.1-rc.1-0-g3e61b81_linux.tar.gz | tar xz -C bin
RUN curl -o bin/aws-iam-authenticator https://amazon-eks.s3.us-west-2.amazonaws.com/1.17.9/2020-08-04/bin/linux/amd64/aws-iam-authenticator
RUN curl -OL https://github.com/jenkins-x/jx-cli/releases/download/v3.0.316/jx-cli-linux-amd64.tar.gz && tar -xzf jx-cli-linux-amd64.tar.gz -C bin
RUN curl -OL https://github.com/derailed/k9s/releases/download/v0.22.1/k9s_Linux_x86_64.tar.gz && tar -xzf k9s_Linux_x86_64.tar.gz -C bin
RUN curl -o bin/jq -L https://github.com/stedolan/jq/releases/download/jq-1.6/jq-linux64
RUN chmod 755 /usr/bin/*

RUN echo 'export PATH=$PATH:usr/local/bin' >> ~/.bash_profile
ENTRYPOINT ["/bin/bash"]
