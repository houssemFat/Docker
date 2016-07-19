# Docker
### Introducion to docker 
1) get it 

`git clone https://github.com/houssemFat/Docker.git`
2) build image locally by addding . (dot) or use ( _houssemfat/Docker_) instead of (_tuto:latest_)

`docker build -t tuto:latest .`

3) run with export , port 5000

`docker run  -p 5000:5000 tuto:latest`
// https://docs.docker.com/docker-for-windows/
