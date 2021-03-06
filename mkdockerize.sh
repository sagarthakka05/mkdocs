#! /bin/sh

# This function is used to take project which is generated by 'mkdocs new' command, 
# build project and create tar.gz.

produce() {
        cd /mkdocs/project
        mkdocs build &> /dev/null
        tar -czf site.tar.gz *
}

# This function is used to take project built project which is in tar.gz format,
# untar the project and server

serve() {
        mkdir -p /website
        tar -xzf /mkdocs/project/site.tar.gz -C /website
        cd /website
        mkdocs serve &> /dev/null
}

case $1 in
        produce)
                produce
                ;;
        serve)
                serve
                ;;
        *)
                echo "Please provide vaild option"
        		exit 1
                ;;
esac
