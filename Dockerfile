FROM golang:alpine

# Add useful packages
RUN apk add vim \
		curl \
		git \
		gcc \
		libc-dev \
		docker
		

RUN git clone https://github.com/fatih/vim-go.git ~/.vim/plugged/vim-go && \
	curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(go env GOPATH)/bin v1.41.1
	

EXPOSE 8080

CMD ["bash"]
