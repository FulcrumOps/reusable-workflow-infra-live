FROM ubuntu:22.10

RUN apt-get update
RUN apt-get install -y curl jq zip
RUN VERSION=$(curl -s https://checkpoint-api.hashicorp.com/v1/check/terraform | jq -r '.current_version') && curl  https://releases.hashicorp.com/terraform/${VERSION}/terraform_${VERSION}_linux_amd64.zip -o /tf.zip
RUN unzip /tf.zip && mv /terraform /usr/bin
