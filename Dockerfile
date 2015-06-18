# This is a comment
############################################################
# Dockerfile to build django-GAE application containers
############################################################
# Set the base image
FROM training/webapp
MAINTAINER Prashant Kumar<prashant4nov@gmail.com>
# private only
EXPOSE 80
# Copy the application folder inside the container
ADD /nonrel-guestbook /home/nonrel-guestbook
# Set the default directory where CMD will execute
#WORKDIR /home/nonrel-guestbook/google_appengine
# Set the default command to execute    
# when creating a new container
CMD ["/bin/bash"]
#ENTRYPOINT python appcfg.py --noauth_local_webserver update /home/nonrel-guestbook/django-guestbook
