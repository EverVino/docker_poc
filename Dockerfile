FROM condaforge/mambaforge:latest

WORKDIR /app

RUN apt-get update \
	&& apt-get install -y curl vim-tiny

COPY ./conda/base.yaml ./

COPY ./script/setup.sh ./

RUN chmod a+x ./setup.sh

RUN /bin/sh -c "./setup.sh"

#RUN echo "mamba activate sele-test" >> ~/.bashrc

COPY ./script/entrypoint.sh ./

RUN chmod a+x ./entrypoint.sh

COPY ./src/ ./src

EXPOSE 8000

ENTRYPOINT ["./entrypoint.sh"]

