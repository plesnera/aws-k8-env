# AWS k8 Docker and Gitpod env
Gitpod AWS environment for doing k8 related work with all the necessary cli tools: eksctl, kubectl, kfctl.
There's also a standalone docker container for local aws evelopment where the easiest is to mount your local credentials: 

```docker run -it -v ~/.aws:/root/.aws [image] ```

If running as gitpod it will look for your credentials as environment variables that can be setup through cli or UI in [gitpod](https://www.gitpod.io/docs/environment-variables/):
* AccessKeyId
* SecretKey
* RoleArn

