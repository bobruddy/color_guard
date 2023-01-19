# start with this baseline
FROM alpine:edge


# upgrade pip3 and install requirements
RUN mkdir build
RUN mkdir /working
RUN mkdir /working/htdocs
COPY . build/
COPY generate_ical.ipynb /working
RUN /bin/sh build/install.sh

# run jupyter
WORKDIR /working
CMD ["ipython", "-c", "%run /working/generate_ical.ipynb"]
#CMD /bin/sh -l
