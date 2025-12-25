$packageName    = 'podman-cli'
$url            = 'https://github.com/containers/podman/releases/download/v5.7.1/podman-remote-release-windows_amd64.zip'
$checksum       = 'ee25e6f47c0e0f67e30528ef5f797ab18f7c08c2dae175e6834bd8c14f60bf1e'
$checksumType   = 'sha256'
$validExitCodes = @(0)
 
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
 
Install-ChocolateyZipPackage `
  -PackageName $packageName `
  -Url64bit "$url" `
  -UnzipLocation "$toolsDir" `
  -Checksum64 $checksum `
  -ChecksumType64 $checksumType
