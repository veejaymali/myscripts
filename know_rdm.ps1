# This Script Shows RDM devices on your ESXi
Get-VM | Get-HardDisk -DiskType "RawPhysical","RawVirtual" | Select Parent,Name,DiskType,ScsiCanonicalName,DeviceName | fl