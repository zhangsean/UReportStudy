# UReportStudy

### build
```
docker run --name git-sync -d  \
    -e GIT_SYNC_REPO=https://github.com/zhangsean/UReportStudy.git \
    -e GIT_SYNC_DEST=/git \
    -e GIT_SYNC_BRANCH=master \
    -e GIT_SYNC_REV=FETCH_HEAD \
    -e GIT_SYNC_WAIT=10 \
    -v /opt/maven/ureport-study:/git openweb/git-sync:0.0.1

docker run -it --rm -v /opt/maven/ureport-study:/app -w /app maven:alpine mvn clean install
```