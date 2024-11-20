FROM apache/druid:31.0.0

ARG MARIADB_JAVA_CLIENT_VERSION=2.7.12
ARG TRINO_JDBC_VERSION=463

ADD --chown=druid:druid https://repo1.maven.org/maven2/org/mariadb/jdbc/mariadb-java-client/${MARIADB_JAVA_CLIENT_VERSION}/mariadb-java-client-${MARIADB_JAVA_CLIENT_VERSION}.jar /opt/druid/extensions/mysql-metadata-storage/
ADD --chown=druid:druid https://repo1.maven.org/maven2/io/trino/trino-jdbc/${TRINO_JDBC_VERSION}/trino-jdbc-${TRINO_JDBC_VERSION}.jar /opt/druid/extensions/druid-lookups-cached-global/

RUN ln -s /opt/druid/extensions/mysql-metadata-storage/mariadb-java-client-${MARIADB_JAVA_CLIENT_VERSION}.jar /opt/druid/lib/mariadb-java-client-${MARIADB_JAVA_CLIENT_VERSION}.jar \
  && ln -s /opt/druid/extensions/druid-lookups-cached-global/trino-jdbc-${TRINO_JDBC_VERSION}.jar /opt/druid/lib/trino-jdbc-${TRINO_JDBC_VERSION}.jar
