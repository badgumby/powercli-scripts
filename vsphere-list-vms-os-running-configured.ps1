get-vm | Select Name,@{N="Configured OS";E={$_.ExtensionData.Config.GuestFullname}},@{N="Running OS";E={$_.Guest.OsFullName}} | export-csv c:\Temp\OS.csv
