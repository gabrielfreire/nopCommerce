$where = $Args[0]
$namespace = $Args[1]

if ($where -eq $null -or $namespace -eq $null) {
    write-host "You need to provide a where clause" -ForegroundColor Red
    write-host "example:" -ForegroundColor Red
    write-host "      $ ./get_podname_where.ps1 (label-key)=(label-value) (namespace)" -ForegroundColor Yellow
    write-host "      $ ./get_podname_where.ps1 app=core-pod smartplatform" -ForegroundColor Yellow
} else {
    kubectl get pod -l $where -n $namespace -o jsonpath='{.items[0].metadata.name}'
}