FROM apache/druid:28.0.1

ADD --chown=druid:druid https://repo1.maven.org/maven2/org/mariadb/jdbc/mariadb-java-client/2.7.3/mariadb-java-client-2.7.3.jar /opt/druid/extensions/mysql-metadata-storage/
