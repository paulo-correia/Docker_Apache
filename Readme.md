# Apache on Docker (Alpine Linux Image)

## Save Dockerfile on a folder Ex: Apache
**Caution: Only one dockerfile per folder**

### Generate image

docker build -t `<name>` .

`<name>` = Ex: apache or your_docker_hub_name/apache:1.0

### Running Container

docker run -d -p `<local port>`:80 `<name>`

`<local port>` = Ex 8080

### If don't generate image, get from docker hub

docker run -d -p `<local port>`:80 paulocorreia/alpine_apache:1.0

### Open Browser
`http://localhost:<local port>`

If `<local port>` is 80 you can omit

If you see "It works on Docker!" is OK