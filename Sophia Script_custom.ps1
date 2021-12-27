#Requires -RunAsAdministrator
#Requires -Version 5.1

[CmdletBinding()]
param
(
	[Parameter(Mandatory = $false)]
	[string[]]
	$Functions
)

Clear-Host

$Host.UI.RawUI.WindowTitle = "Sophia Script for Windows 10 v5.12.9 | Made with $([char]::ConvertFromUtf32(0x1F497)) of Windows | $([char]0x00A9) farag & Inestic, 2014$([char]0x2013)2021"
Remove-Module -Name Sophia -Force -ErrorAction Ignore
Import-Module -Name $PSScriptRoot\Manifest\Sophia.psd1 -PassThru -Force
Import-LocalizedData -BindingVariable Global:Localization -FileName Sophia -BaseDirectory $PSScriptRoot\Localizations

#region Protection

Checkings -Warning

#endregion Protection

#region Privacy & Telemetry

DiagTrackService -Disable
DiagnosticDataLevel -Minimal
ErrorReporting -Disable
FeedbackFrequency -Never
ScheduledTasks -Disable
SigninInfo -Disable
LanguageListAccess -Disable
AdvertisingID -Disable
WindowsWelcomeExperience -Hide
SettingsSuggestedContent -Hide
AppsSilentInstalling -Disable
WhatsNewInWindows -Disable
TailoredExperiences -Disable
BingSearch -Disable

#endregion Privacy & Telemetry

#region UI & Personalization

ThisPC -Show
CheckBoxes -Enable
FileExtensions -Show
MergeConflicts -Show
OpenFileExplorerTo -ThisPC
CortanaButton -Hide
OneDriveFileExplorerAd -Hide
SnapAssist -Disable
FileTransferDialog -Detailed
3DObjects -Hide
QuickAccessRecentFiles -Hide
QuickAccessFrequentFolders -Hide
PeopleTaskbar -Hide
TaskbarSearch -Hide
WindowsInkWorkspace -Hide
NotificationAreaIcons -Show
MeetNow -Hide
NewsInterests -Disable
ControlPanelView -LargeIcons
WindowsColorMode -Dark
AppColorMode -Dark
NewAppInstalledNotification -Hide
JPEGWallpapersQuality -Max
TaskManagerWindow -Expanded
RestartNotification -Show
ShortcutsSuffix -Disable
PrtScnSnippingTool -Enable
AeroShaking -Enable
UnpinTaskbarShortcuts -Shortcuts Edge, Store, Mail

#endregion UI & Personalization

#region OneDrive

OneDrive -Uninstall

#endregion OneDrive

#region System

StorageSense -Enable
StorageSenseFrequency -Month
StorageSenseTempFiles -Enable
BSoDStopError -Enable
DeliveryOptimization -Disable
# WindowsFeatures -Disable
# WindowsCapabilities -Uninstall
UpdateMicrosoftProducts -Enable
PowerPlan -Balanced
LatestInstalled.NET -Enable
ReservedStorage -Disable
NumLock -Enable
StickyShift -Disable
Autoplay -Disable
# InstallVCRedistx64

#endregion System

#region WSL


#endregion WSL

#region Start menu

RecentlyAddedApps -Hide
AppSuggestions -Hide
PinToStart -UnpinAll

#endregion Start menu

#region UWP apps

CortanaAutostart -Disable
CheckUWPAppsUpdates

#endregion UWP apps

#region Gaming

XboxGameBar -Disable
XboxGameTips -Disable

#endregion Gaming

#region Scheduled tasks

CleanupTask -Register
SoftwareDistributionTask -Register
TempTask -Register

#endregion Scheduled tasks

#region Microsoft Defender & Security

NetworkProtection -Enable
PUAppsDetection -Enable
DefenderSandbox -Enable
DismissMSAccount
DismissSmartScreenFilter

#endregion Microsoft Defender & Security

#region Context menu

MSIExtractContext -Show
CABInstallContext -Show
CastToDeviceContext -Hide
ShareContext -Hide
EditWithPaint3DContext -Hide
EditWithPhotosContext -Hide
CreateANewVideoContext -Hide
ImagesEditContext -Hide
PrintCMDContext -Hide
IncludeInLibraryContext -Hide
SendToContext -Hide
BitLockerContext -Hide
BitmapImageNewContext -Hide
RichTextDocumentNewContext -Hide
CompressedFolderNewContext -Hide
MultipleInvokeContext -Enable
UseStoreOpenWith -Hide

#endregion Context menu

RefreshEnvironment
Errors
