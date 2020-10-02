FROM dotriver/alpine-s6

RUN apk add postgresql

ADD conf/ / 