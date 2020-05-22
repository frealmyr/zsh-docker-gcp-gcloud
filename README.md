# zsh-docker-gcp-gcloud

Run `gcloud` commands using docker in ZSH functions, added support for vim/nano.

*Example ZSH function for aliasing gcloud to docker image:*

```
#!/usr/local/bin/zsh

#
# Run gcloud commands
#
function gcloud() {

if [[ -z "$DOCKER_RAND_ID" ]]; then
  DOCKER_RAND_ID=$RANDOM
fi

docker run --name "$DOCKER_RAND_ID" --rm -ti \
  -v $(pwd):$(pwd) \
  -v "$HOME"/.config/gcloud:/root/.config/gcloud \
  frealmyr/zsh-docker-gcp-gcloud:latest $argv
}
```
