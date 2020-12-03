yum -y update
mkdir -p /etc/docker
touch /etc/docker/daemon.json
echo '{"data-root":"/docker", "storage-driver":"overlay2","storage-opts":["overlay2.override_kernel_check=true"]}' > /etc/docker/daemon.json
yum install -y yum-utils
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo 
yum install -y docker-ce --allowerasing
yum install -y docker-ce docker-ce-cli containerd.io
systemctl start docker
systemctl status  docker
