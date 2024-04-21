$LangList = Get-WinUserLanguageList
$MarkedLang = $LangList | where LanguageTag -eq "zh-Hans-CN"
$LangList.Remove($MarkedLang)
Set-WinUserLanguageList $LangList -Force

Set-WinUILanguageOverride "ru-RU";
exit