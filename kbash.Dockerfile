FROM ubuntu:latest

RUN apt update -y && apt install curl -y && apt install jq -y

