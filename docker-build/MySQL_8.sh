# --name => 容器名称
# -p => 宿主机端口 : 内部容器端口
# -e MYSQL_ROOT_PASSWORD => 数据库 root 密码
# -v 宿主机存储路径 : 内部容器存储路径 / /var/lib/mysql 为 MySQL 数据存储路径
# --restart=always => 服务自动重启

docker run -d --name mysql_8 \
  -p 3306:3306 \
  -p 33060:33060 \
  -e MYSQL_ROOT_PASSWORD=Mysql@123456 \
  -v /var/lib/mysql:/var/lib/mysql \
  --restart=always \
  mysql:8
