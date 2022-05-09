# Docker challenge

MkDocs is a fast and simple static site generator that's geared towards building project documentation.

## Produce

First create new project using below command.

```bash
$ mkdocs new project
```
The above command will create project folder and It contains basic project structure with sample website code.

Now, You can build the web page by below command:

```bash
$ docker run -v <new project path>:/mkdocs/project <docker image name> produce
```
Example:

```bash
$ sudo docker run -v /opt/workspace/project:/mkdocs/project mkdocs produce
```

The above command will also generate site.tar.gz file into /opt/workspace/project directory.

## Serve

To serve the generated static website use below command format:

```bash
$ sudo docker run -d -p 8000:8000 -v <new project path>:/mkdocs/project <docker image name> serve
```

Here is an example you can find in the serve.sh file:
```bash
$ sudo docker run -d -p 8001:8000 -v /opt/workspace/project:/mkdocs/project mkdocs serve
```

This command serve the site.tar.gz static web site in port 8000.

Note: Here we used same path /opt/workspace/project because we used asame path to generate static website.
