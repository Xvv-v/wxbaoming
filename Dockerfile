FROM golang:latest
WORKDIR /home/go/src/wxapply
COPY /miniprogram /home/go/src/wxapply
RUN go get github.com/go-sql-driver/mysql
RUN go get gopkg.in/yaml.v2
RUN go build /home/go/src/wxapply/reply.go
ENV port 8080
EXPOSE 8080
ENTRYPOINT ["./reply"]
