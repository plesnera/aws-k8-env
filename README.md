# AWS k8 Docker and Gitpod env
Gitpod AWS environment for doing k8 related work with all the necessary cli tools: eksctl, kubectl, kfctl, K9.
There's also a standalone docker container for local aws development which will bind mount your local .aws and .kube credentials if you use the included docker_run.sh and included the image name as a parameter.

```./docker_run  [image] ```


If running as gitpod it will look for your credentials as environment variables that can be setup through cli or UI in [gitpod](https://www.gitpod.io/docs/environment-variables/):
* AccessKeyId
* SecretKey
* RoleArn

