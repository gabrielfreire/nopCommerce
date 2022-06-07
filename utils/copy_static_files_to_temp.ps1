$podname = $(./get_podname_where.ps1 app=nopcommerce-pod nopcommerce)

$_appDataSourcePath = "/app/App_Data"
$_appDataDestPath = ".\temp\App_Data"

$_pluginsSourcePath = "/app/Plugins"
$_pluginsDestPath = ".\temp\Plugins"

$_themesSourcePath = "/app/Themes"
$_themesDestPath = ".\temp\Themes"

$_wwwrootSourcePath = "/app/wwwroot"
$_wwwrootDestPath = ".\temp\wwwroot"

kubectl cp "nopcommerce/$($podname):$($_appDataSourcePath)" "$_appDataDestPath"
kubectl cp "nopcommerce/$($podname):$($_pluginsSourcePath)" "$_pluginsDestPath"
kubectl cp "nopcommerce/$($podname):$($_themesSourcePath)" "$_themesDestPath"
kubectl cp "nopcommerce/$($podname):$($_wwwrootSourcePath)" "$_wwwrootDestPath"