#!/usr/bin/env fish

function docker_exec
  if not set -q $argv[1]
    echo 'docker-exec.fish <CONTAINER_NAME>'
    exit 1
  else
    docker exec -it $argv[1] /bin/sh
  end
end

set arg_count (count $argv)
if test $arg_count -ne 1
  echo 'Error for Argument'
  echo 'USAGE: docker_exec.fish <CONTAINER_NAME>'
  exit 1
else
  docker_exec
end
