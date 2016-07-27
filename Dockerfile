FROM ubuntu

RUN apt-get update &&       \
    apt-get install -qy     \
            git             \
            build-essential \
            python-pip      \
            git             \
            curl            \
            vim             \
            man

WORKDIR /code

COPY . /code/

RUN git submodule update

RUN python setup.py bdist_wheel

CMD bash