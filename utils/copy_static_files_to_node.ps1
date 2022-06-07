$_user = "ubuntu"
$_pass = "kubeadmin"
$_host = "k8s-node-04"

$_sourcePath = ".\temp\*"
$_destPath = "/var/lib/nopCommerce"

scp -r $_sourcePath "$_user@$($_host):$_destPath"