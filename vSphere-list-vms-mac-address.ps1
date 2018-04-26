Get-View -Viewtype VirtualMachine -Property Name, Config.Hardware.Device | Select name,
        @{n="MAC(s)"; e={($_.Config.Hardware.Device | ?{($_ -is [VMware.Vim.VirtualEthernetCard])} | %{$_.MacAddress}) -join ","}} | `
    Export-Csv c:\Temp\VMMACsInfo.csv -UseCulture -NoTypeInformation
