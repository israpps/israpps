# to keep some nonsense at hand

### Legacy PS2SDK Docker
```sh
docker run -ti -w /project -v $(pwd):/project ps2dev/ps2dev sh
```

inside docker:
```sh
apk add make git
git config --global --add safe.directory /project
```
