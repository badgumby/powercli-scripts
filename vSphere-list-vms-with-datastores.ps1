Get-VM | select name, @{N="Datastore";E={[string]::Join(',',(Get-datastore -Id $_.DatastoreIdList | Select -ExpandProperty Name))}} | Export-csv c:\Temp\all-vms.csv -NoTypeInformation -UseCulture
