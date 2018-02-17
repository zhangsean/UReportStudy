FROM maven:alpine

sed -i '159 i \    <mirror>\n        <id>alimaven</id>\n        <name>aliyun maven</name>\n        <url>http://maven.aliyun.com/nexus/content/roups/public/</url>\n        <mirrorOf>central</mirrorOf>\n    </mirror>' /usr/share/maven/conf/settings.xml

EXPOSE 8080

CMD ["mvn package"]

COPY . /usr/src/app
