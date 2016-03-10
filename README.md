# docker-terraria-server
Run TerrariaServer in Docker

# Build
To build execute the followin:

```
docker build -t atisu/terraria-server .
```

# Run
To run use the following:

```
docker run -i -p 7777:7777 --name="terraria-server" atisu/terraria-server
```