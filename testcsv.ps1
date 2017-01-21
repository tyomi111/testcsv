get-childItem "*.csv" | foreach {
 Import-Csv -Path $_ | Select ITEM | Export-Csv -Append -NoTypeInformation -Path AB.csv
}

Import-csv AB.csv | foreach { $_.ITEM } | Sort-Object -Unique