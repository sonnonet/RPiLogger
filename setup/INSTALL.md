# INSTALL.md

## rc.local ##
위치 : /etc/rc.local
소유자 root, 실행권한을 추가한다.
<pre> sudo cp rc.local /etc/ </pre>
<pre> sudo chown root:root /etc/rc.local </pre>
<pre> sudo chmod 755 /etc/rc.local </pre>

## Hbase 실행시 JAVA_HOME 에러 ##
sudo 사용시 환경 설정이 리셋되는 문제가 발생할 수 있다.

1. 일반 유저와 sudo 사용시 환경 설정이 차이가 나는지 확인한다.
<pre> env </pre>
<pre> sudo env </pre>
JAVA_HOME 이 설정되지 않았다면 hbase 실행 시 에러가 발생할 수 있다.

2. hbase 실행 스크립트에 JAVA_HOME 을 추가한다.

 1번의 문제가 발생할 경우, 실행 스크립트에 다음과 같이 내용을 추가한다.
<pre> sudo nano /usr/local/hbase-1.0.1.1/bin/stop-hbase.sh </pre>
<pre> sudo nano /usr/local/hbase-1.0.1.1/bin/start-hbase.sh </pre>
stop-hbase.sh, start-hbase.sh :
<pre> JAVA_HOME=/usr </pre>
