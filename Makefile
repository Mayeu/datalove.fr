.PHONY = s serve server

build: public
public: content/* layouts/**/* static/*
	hugo
	touch public

s: serve
serve: server
server:
	hugo serve

docker: build
	docker build .
