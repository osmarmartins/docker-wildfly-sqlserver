FROM jboss/wildfly
MAINTAINER Osmar Martins Filho <osmar@futurainformatica.com.br>
ADD modules/. /opt/jboss/wildfly/modules/system/layers/base/com/microsoft/main/.
ADD configuration/. /opt/jboss/wildfly/standalone/configuration/.
RUN /opt/jboss/wildfly/bin/add-user.sh admin admin --silent
EXPOSE 8080
EXPOSE 9990
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]