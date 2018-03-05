FROM maven:alpine

RUN sed -i '159 i \    <mirror>\n        <id>alimaven</id>\n        <name>aliyun maven</name>\n        <url>http://maven.aliyun.com/nexus/content/groups/public/</url>\n        <mirrorOf>*</mirrorOf>\n    </mirror>' /usr/share/maven/conf/settings.xml

EXPOSE 8080

CMD ["mvn" "tomcat7:run"]

WORKDIR /app

COPY . /app

RUN mvn compile
