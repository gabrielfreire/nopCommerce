
# for this to work you need to go to the target node
# create a folder /var/lib/nopCommerce and run sudo chown -R ubuntu:ubuntu /var/lib/nopCommerce

# commands:
# $ mkdir /var/lib/nopCommerce
# $ sudo chown -R ubuntu:ubuntu /var/lib/nopCommerce

# so the 'ubuntu' user can perform the tasks

$_nodeSource = $Args[0]
$_nodeTarget = $Args[1]

$_user = "ubuntu"
$_pass = "kubeadmin"

$_filesPath = "/var/lib/nopCommerce"


$_tempPath = ".\temp"

mkdir $_tempPath

scp -r "$_user@$($_nodeSource):$_filesPath" $_tempPath
scp -r $_tempPath\* "$_user@$($_nodeTarget):$_filesPath/*"

Remove-Item -Recurse -Path $_tempPath