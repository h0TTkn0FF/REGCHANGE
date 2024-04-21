$LangList = Get-WinUserLanguageList
$LangList.Add("zh-Hans-CN")
Set-WinUserLanguageList -LanguageList $LangList -Force
Set-WinUILanguageOverride "zh-Hans-CN";
exit