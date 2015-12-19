foreach( $hotfix in (Get-Hotfix -id KB3035583,KB2952664,KB2976978,KB3021917,KB3044374,KB2990214)) {
	$kb=$hotfix.Caption.Substring(35); 
	Start-Process -FilePath "C:\Windows\system32\wusa.exe" -ArgumentList "/uninstall /kb:$kb" -Wait
}
