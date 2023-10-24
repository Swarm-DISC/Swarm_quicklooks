IMAGE_NAME="ghcr.io/swarm-disc/swarm_quicklooks"
IMAGE_TAG="main"
uid=1000
gid=100
subuidSize=$(( $(podman info --format "{{ range .Host.IDMappings.UIDMap }}+{{.Size }}{{end }}" ) - 1 ))
subgidSize=$(( $(podman info --format "{{ range .Host.IDMappings.GIDMap }}+{{.Size }}{{end }}" ) - 1 ))
podman run -it --rm \
    -v "${PWD}":/home/jovyan/work --user $uid:$gid \
    --uidmap $uid:0:1 --uidmap 0:1:$uid --uidmap $(($uid+1)):$(($uid+1)):$(($subuidSize-$uid)) \
    --gidmap $gid:0:1 --gidmap 0:1:$gid --gidmap $(($gid+1)):$(($gid+1)):$(($subgidSize-$gid)) \
    $IMAGE_NAME:$IMAGE_TAG bash -c " \
        cd /home/jovyan/work/jupyterbook/ && \
        ./build-book.sh \
    "