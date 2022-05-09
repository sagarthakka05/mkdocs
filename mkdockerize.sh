#! /bin/sh

# This function is used to take project and build
produce() {
        cd /mkdocs/project
        mkdocs build
        # cd ..
        ls -lrt
        tar -czf site.tar.gz *
}

serve() {
        mkdir -p /website
        tar -xzf /mkdocs/project/site.tar.gz -C /website
        ls -lrt /website
        cd /website
        mkdocs serve
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
