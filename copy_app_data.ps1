$_user = "ubuntu"
$_pass = "kubeadmin"
$_host = "192.168.0.214"

$_linuxPath = "/home/ubuntu/data/nopCommerce/App_Data"
scp -r .\src\Presentation\Nop.Web\App_Data\* "$_user@$($_host):$_linuxPath"

~/SshScript.exe -h $_host -u $_user -p $_pass exec -c "chown -R root:root /home/ubuntu/data/nopCommerce/*"