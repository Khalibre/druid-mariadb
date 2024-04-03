FROM apache/druid:29.0.1

ARG MARIADB_JAVA_CLIENT_VERSION=3.3.3

ADD --chown=druid:druid https://repo1.maven.org/maven2/org/mariadb/jdbc/mariadb-java-client/${MARIADB_JAVA_CLIENT_VERSION}/mariadb-java-client-${MARIADB_JAVA_CLIENT_VERSION}.jar /opt/druid/extensions/mysql-metadata-storage/
