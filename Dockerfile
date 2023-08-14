FROM apache/druid:27.0.0

ADD --chown=druid:druid https://repo1.maven.org/maven2/org/mariadb/jdbc/mariadb-java-client/2.7.3/mariadb-java-client-2.7.3.jar /opt/druid/extensions/mysql-metadata-storage/
