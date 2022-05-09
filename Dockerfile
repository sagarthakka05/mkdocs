FROM python:3.9
RUN pip install mkdocs

WORKDIR /mkdocs
COPY mkdockerize.sh /mkdocs/mkdockerize.sh

RUN chmod +x /mkdocs/mkdockerize.sh

EXPOSE 8000
ENTRYPOINT [ "/mkdocs/mkdockerize.sh" ]
