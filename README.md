# docker-terraria-server
Run TerrariaServer in Docker

# Build
1. Create your own serverconfig.txt .
2. Create Worlds/ directory and add world data (if any) to it.
2. To build execute the following:

```
docker build -t atisu/terraria-server .
```

# Run
To run use the following (replace 127.0.0.1 as needed):

```
docker run -i -p 127.0.0.1:7777:7777 --name="terraria-server" atisu/terraria-server
```
