docker rm $(docker ps --filter status=exited | grep 'weeks ago')
