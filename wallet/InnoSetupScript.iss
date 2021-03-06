[Setup]
AppName=WDD Wallet
AppVersion=1.0
DefaultDirName={pf}\WDDWallet
DefaultGroupName=WDDWallet
UninstallDisplayIcon={app}\WDDWallet.exe
Compression=lzma2
SolidCompression=yes
OutputDir=output
OutputBaseFilename=WddWalletSetup
ArchitecturesInstallIn64BitMode=ia64 x64

[Files]
Source: "output\Wallet-win-ia32\*"; DestDir: "{app}"
Source: "output\Wallet-win-ia32\locales\*"; DestDir: "{app}\locales"
Source: "wddwallet\plink.exe"; DestDir: "{app}"
Source: "multichain_appliance\wddwallet.ova"; DestDir: "{app}"
Source: "vbox_setup\VirtualBoxSetup.exe"; DestDir: "{app}"

[Icons]
Name: "{group}\WDDWallet"; Filename: "{app}\Wallet.exe"

[Run]
Filename: "{app}\VirtualBoxSetup.exe";  Description: "Installing VM to handle core wallet functions"
Filename: "{pf}\Oracle\VirtualBox\VBoxManage.exe"; Parameters: "import ""{app}/wddwallet.ova"""; Description: "Installing wallet VM"; Flags: runminimized
Filename: "{app}\Wallet.exe"; Flags: postinstall

