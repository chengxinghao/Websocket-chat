set -ex
# clone 代码到 /var/www/chat-room

# 换源
cp /var/www/chat-room/misc/sources.list /etc/apt/sources.list
mkdir -p /root/.pip
cp /var/www/chat-room/misc/pip.conf /root/.pip/pip.conf

# 装依赖
apt-get update
apt-get install -y python3-pip
pip3 install flask eventlet flask-socketio

echo 'succsss'
echo 'ip'
hostname -I

service restart supervisor