# ANUPAMA - One-Liner PowerShell Installer
# Run as Administrator: iex (iwr -useb "https://raw.githubusercontent.com/gigachad80/Anupama/main/install.ps1").Content

Write-Host "🎯 === ANUPAMA PowerShell Installer ===" -ForegroundColor Cyan
Write-Host "⚡ Installing ANUPAMA File Organizer..." -ForegroundColor Yellow
Write-Host ""

# Check if running as Administrator
if (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Write-Host "❌ ERROR: This script must be run as Administrator!" -ForegroundColor Red
    Write-Host "   Right-click PowerShell and select 'Run as Administrator'" -ForegroundColor Yellow
    Write-Host ""
    Read-Host "Press Enter to exit"
    exit 1
}

# Create tools directory
$toolsPath = "C:\tools"
Write-Host "📁 Creating tools directory: $toolsPath" -ForegroundColor Green

if (!(Test-Path $toolsPath)) {
    try {
        New-Item -ItemType Directory -Path $toolsPath -Force | Out-Null
        Write-Host "   ✅ Created: $toolsPath" -ForegroundColor Green
    }
    catch {
        Write-Host "   ❌ Failed to create directory: $_" -ForegroundColor Red
        exit 1
    }
} else {
    Write-Host "   ✅ Directory already exists: $toolsPath" -ForegroundColor Green
}

# Download ANUPAMA.bat
$batPath = "$toolsPath\ANUPAMA.bat"
Write-Host "📥 Downloading ANUPAMA.bat..." -ForegroundColor Green

# Your batch script content (embedded for offline installation)
$batchContent = @'
@echo off
setlocal enabledelayedexpansion

:: Set code page to UTF-8 for potential Unicode support
chcp 65001 >nul

:: Set escape character for ANSI sequences
for /f %%a in ('echo prompt $E ^| cmd') do set "ESC=%%a"

:: Define color codes
set "reset=%ESC%[0m"
set "green=%ESC%[32m"
set "red=%ESC%[31m"
set "blue=%ESC%[34m"
set "yellow=%ESC%[33m"
set "bold=%ESC%[1m"

echo %bold%%blue%=== Batch Downloads File Organizer ===%reset%
echo Note: Colors require ANSI support (Windows 10 build 16257+). For emojis, use CMD.exe / Command Prompt with a font like Segoe UI Emoji.
echo Started at: %date% %time%
echo.

:: Set target directory
if "%~1"=="" (
    set "downloadsDir=%USERPROFILE%\Downloads"
) else (
    set "downloadsDir=%~1"
)

if not exist "%downloadsDir%" (
    echo %red%ERROR: Directory does not exist: %downloadsDir%%reset%
    pause
    exit /b 1
)

echo Using directory: %downloadsDir%
cd /d "%downloadsDir%" || (
    echo %red%ERROR: Cannot access directory: %downloadsDir%%reset%
    pause
    exit /b 1
)

:: Analyze contents
echo %bold%%blue%=== Pre-Organization Analysis ===%reset%
set "totalFiles=0"
for /f %%a in ('dir /b /a-d *.* 2^>nul') do set /a totalFiles+=1
echo Total files: %totalFiles%

if %totalFiles% equ 0 (
    echo No files to organize.
    pause
    exit /b 0
)

echo.
echo File extensions found:
set "extensions="
for %%f in (*.*) do (
    set "ext=%%~xf"
    set "extNoDot=!ext:.=!"
    if defined count_!extNoDot! (
        set /a count_!extNoDot!+=1
    ) else (
        set "count_!extNoDot!=1"
        set "extensions=!extensions! !ext!"
    )
)
for %%e in (!extensions!) do (
    set "extNoDot=%%e"
    set "extNoDot=!extNoDot:.=!"
    echo   %%e: !count_!extNoDot!! files
)

echo.
echo %bold%%blue%=== Creating Folders ===%reset%

:: Define categories
REM Extended File Organization Categories

REM === EXISTING CATEGORIES ===
set "category1_folder=MD-FILES"
set "category1_exts=.md .markdown"

set "category2_folder=PDF-FILES"
set "category2_exts=.pdf"

set "category3_folder=PNG-JPGs"
set "category3_exts=.jpg .jpeg .png"

set "category4_folder=CODE-FILES\GO-FILES"
set "category4_exts=.go"

set "category5_folder=CODE-FILES\PYTHON-FILES"
set "category5_exts=.py"

set "category6_folder=CODE-FILES\HTML-FILES"
set "category6_exts=.html .htm"

set "category7_folder=ZIPPED\7Z-FILES"
set "category7_exts=.7z"

set "category8_folder=ZIPPED\TAR-ONES"
set "category8_exts=.tar .tar.gz .tgz"

REM === NEW SUGGESTED CATEGORIES ===

REM Document Files
set "category9_folder=DOCUMENTS\OFFICE-DOCS"
set "category9_exts=.doc .docx .xls .xlsx .ppt .pptx"

set "category10_folder=DOCUMENTS\TEXT-FILES"
set "category10_exts=.txt .rtf .odt .ods .odp"

REM Image Files - Extended
set "category11_folder=IMAGES\VECTOR-GRAPHICS"
set "category11_exts=.svg .ai .eps .pdf"

set "category12_folder=IMAGES\RAW-PHOTOS"
set "category12_exts=.raw .cr2 .nef .arw .dng"

set "category13_folder=IMAGES\GIF-WEBP"
set "category13_exts=.gif .webp .bmp .tiff .tif"

REM Audio Files
set "category14_folder=MEDIA\AUDIO-FILES"
set "category14_exts=.mp3 .wav .flac .aac .ogg .m4a .wma"

REM Video Files
set "category15_folder=MEDIA\VIDEO-FILES"
set "category15_exts=.mp4 .avi .mkv .mov .wmv .flv .webm .m4v"

REM Code Files - Extended
set "category16_folder=CODE-FILES\JAVASCRIPT-FILES"
set "category16_exts=.js .ts .jsx .tsx .mjs"

set "category17_folder=CODE-FILES\CSS-STYLE"
set "category17_exts=.css .scss .sass .less"

set "category18_folder=CODE-FILES\C-CPP-FILES"
set "category18_exts=.c .cpp .h .hpp .cc .cxx"

set "category19_folder=CODE-FILES\JAVA-FILES"
set "category19_exts=.java .class .jar"

set "category20_folder=CODE-FILES\PHP-FILES"
set "category20_exts=.php .php3 .php4 .php5 .phtml"

set "category21_folder=CODE-FILES\RUBY-FILES"
set "category21_exts=.rb .erb .rake"

set "category22_folder=CODE-FILES\SHELL-SCRIPTS"
set "category22_exts=.sh .bash .zsh .bat .cmd .ps1"

set "category23_folder=CODE-FILES\CONFIG-FILES"
set "category23_exts=.json .xml .yaml .yml .toml .ini .cfg .conf"

REM Database Files
set "category24_folder=DATABASE\DB-FILES"
set "category24_exts=.db .sqlite .sqlite3 .mdb .accdb"

set "category25_folder=DATABASE\SQL-FILES"
set "category25_exts=.sql .ddl .dml"

REM Archive Files - Extended
set "category26_folder=ZIPPED\ZIP-RAR"
set "category26_exts=.zip .rar .gz .bz2"

set "category27_folder=ZIPPED\INSTALLER-PACKAGES"
set "category27_exts=.msi .exe .deb .rpm .dmg .pkg"

REM 3D and Design Files
set "category28_folder=DESIGN\3D-MODELS"
set "category28_exts=.obj .fbx .dae .3ds .blend .max .ma .mb"

set "category29_folder=DESIGN\CAD-FILES"
set "category29_exts=.dwg .dxf .step .stp .iges .igs"

set "category30_folder=DESIGN\PHOTOSHOP-FILES"
set "category30_exts=.psd .psb .xcf .sketch"

REM Font Files
set "category31_folder=FONTS\FONT-FILES"
set "category31_exts=.ttf .otf .woff .woff2 .eot"

REM E-book Files
set "category32_folder=BOOKS\EBOOK-FILES"
set "category32_exts=.epub .mobi .azw .azw3 .fb2 .lit"

REM Presentation and Spreadsheet Specific
set "category33_folder=SPREADSHEETS\EXCEL-CSV"
set "category33_exts=.csv .tsv .xlsm .xltx .xltm"

REM Virtual Machine and Disk Images
set "category34_folder=SYSTEM\DISK-IMAGES"
set "category34_exts=.iso .img .vhd .vhdx .vmdk .qcow2"

set "category35_folder=SYSTEM\VIRTUAL-MACHINES"
set "category35_exts=.ova .ovf .vbox .vmx"

REM Log and System Files
set "category36_folder=LOGS\LOG-FILES"
set "category36_exts=.log .txt .out .err"

set "category37_folder=SYSTEM\BACKUP-FILES"
set "category37_exts=.bak .backup .old .orig .tmp"

REM Web Development Specific
set "category38_folder=WEB-DEV\TEMPLATE-FILES"
set "category38_exts=.tpl .mustache .hbs .ejs .pug .jade"

set "category39_folder=WEB-DEV\MANIFEST-LOCK"
set "category39_exts=.lock .manifest .map .min.js .min.css"

REM Security and Certificate Files
set "category40_folder=SECURITY\CERT-KEYS"
set "category40_exts=.pem .crt .cer .p12 .pfx .key .pub"

REM Binary and Executable Files
set "category41_folder=EXECUTABLES\BINARY-FILES"
set "category41_exts=.bin .exe .app .com .scr"

set "category42_folder=EXECUTABLES\LIBRARY-FILES"
set "category42_exts=.dll .so .dylib .lib .a"

REM Data Exchange Files
set "category43_folder=DATA\EXCHANGE-FORMATS"
set "category43_exts=.csv .tsv .jsonl .ndjson .parquet"

set "category44_folder=DATA\SERIALIZED-DATA"
set "category44_exts=.pickle .pkl .dat .bin .msgpack"

REM README and Documentation
set "category45_folder=DOCUMENTATION\README-FILES"
set "category45_exts=.readme .license .changelog .authors"

REM Temporary and Cache Files
set "category46_folder=TEMP\CACHE-TEMP"
set "category46_exts=.cache .temp .swp .swo .~"

REM === ADDITIONAL CATEGORIES FOR MISSED TYPES ===

REM Windows Zone Identifier Files
set "category47_folder=SYSTEM\ZONE-IDENTIFIER"
set "category47_exts=.Zone.Identifier"

REM XZ Compressed Files (including VM disk images)
set "category48_folder=ZIPPED\XZ-COMPRESSED"
set "category48_exts=.xz .lzma .lz"

REM VMDK Virtual Disk Files (including compressed ones)
set "category49_folder=SYSTEM\VMDK-DISKS"
set "category49_exts=.vmdk .vmdk.xz"

REM SCSS/SASS Preprocessor Files
set "category50_folder=CODE-FILES\SASS-SCSS"
set "category50_exts=.scss .sass"

REM Files with Multiple Extensions or Special Naming
set "category51_folder=SYSTEM\MULTI-EXTENSION"
set "category51_exts=.Zone.Identifier .vmdk.xz .tar.gz .tar.bz2 .tar.xz"

set "category_count=51"

:: Create folders
for /l %%i in (1,1,%category_count%) do (
    set "folder=!category%%i_folder!"
    if not exist "!folder!" (
        md "!folder!"
        echo %green%[+] Created: !folder!%reset%
    ) else (
        echo %yellow%--^> Exists: !folder!%reset%
    )
)

echo.
echo %bold%%blue%=== Organizing Files ===%reset%

set "grandTotal=0"
for /l %%i in (1,1,%category_count%) do (
    set "folder=!category%%i_folder!"
    set "exts=!category%%i_exts!"
    echo Processing !folder!...
    set "moved=0"
    for %%e in (!exts!) do (
        for %%f in (*%%e) do (
            move "%%f" "!folder!" >nul 2>nul
            set /a moved+=1
        )
    )
    set /a grandTotal+=moved
    if !moved! gtr 0 (
        echo   %green%[OK] Moved !moved! files to !folder!%reset%
    ) else (
        echo   %yellow%-- No files for !folder!%reset%
    )
    echo.
)

echo %bold%%blue%=== Results ===%reset%

for /l %%i in (1,1,%category_count%) do (
    set "folder=!category%%i_folder!"
    set "count=0"
    for /f %%a in ('dir /b /a-d "!folder!\*.*" 2^>nul') do set /a count+=1
    echo [Folder] !folder!: !count! files
    if !count! gtr 0 (
        set "fileCount=0"
        for %%f in ("!folder!\*.*") do (
            if !fileCount! lss 3 (
                echo     - %%~nxf
                set /a fileCount+=1
            )
        )
        if !count! gtr 3 (
            set /a more=!count! - 3
            echo     ... and !more! more
        )
    )
    echo.
)

echo %bold%%blue%=== Remaining Files ===%reset%
set "remaining=0"
for %%f in (*.*) do (
    if /i not "%%~xf"==".bat" (
        set /a remaining+=1
        if !remaining! leq 5 (
            echo   - %%f
        )
    )
)
if !remaining! gtr 5 (
    set /a more=!remaining! - 5
    echo   ... and !more! more
)
if !remaining! equ 0 (
    echo %green%[OK] All files organized!%reset%
) else (
    echo %red%[!] Remaining: !remaining!%reset%
)

echo.
echo %bold%%blue%=== Summary ===%reset%
echo Total files: %totalFiles%
echo Organized: !grandTotal!
echo Remaining: !remaining!
echo Completed at: %date% %time%

echo.
echo Done!
pause
'@

try {
    $batchContent | Out-File -FilePath $batPath -Encoding UTF8 -Force
    Write-Host "   ✅ Successfully created: $batPath" -ForegroundColor Green
}
catch {
    Write-Host "   ❌ Failed to create batch file: $_" -ForegroundColor Red
    exit 1
}

# Add C:\tools to system PATH
Write-Host "⚙️ Adding C:\tools to system PATH..." -ForegroundColor Green

try {
    # Get current system PATH
    $currentPath = [Environment]::GetEnvironmentVariable("PATH", "Machine")
    
    # Check if C:\tools is already in PATH
    if ($currentPath -split ";" -contains $toolsPath) {
        Write-Host "   ✅ C:\tools is already in system PATH" -ForegroundColor Green
    } else {
        # Add C:\tools to PATH
        $newPath = $currentPath + ";" + $toolsPath
        [Environment]::SetEnvironmentVariable("PATH", $newPath, "Machine")
        Write-Host "   ✅ Added C:\tools to system PATH" -ForegroundColor Green
        Write-Host "   ⚠️  You may need to restart Command Prompt/PowerShell for changes to take effect" -ForegroundColor Yellow
    }
}
catch {
    Write-Host "   ❌ Failed to modify system PATH: $_" -ForegroundColor Red
    Write-Host "   💡 You may need to add C:\tools to PATH manually" -ForegroundColor Yellow
}

# Final success message
Write-Host ""
Write-Host "🎉 === Installation Complete! ===" -ForegroundColor Green
Write-Host ""
Write-Host "✅ ANUPAMA has been successfully installed!" -ForegroundColor Green  
Write-Host "📁 Location: $batPath" -ForegroundColor Cyan
Write-Host ""
Write-Host "🚀 Usage from anywhere:" -ForegroundColor Yellow
Write-Host "   ANUPAMA                    # Organize current directory" -ForegroundColor White
Write-Host "   ANUPAMA `"%USERPROFILE%\Downloads`"  # Organize Downloads folder" -ForegroundColor White
Write-Host "   ANUPAMA `"D:\YourFolder`"           # Organize specific folder" -ForegroundColor White
Write-Host ""
Write-Host "💡 Pro Tip: Use CMD.exe / Command Prompt for best color and emoji support!" -ForegroundColor Cyan
Write-Host "🛠️  If 'ANUPAMA' command not found, restart your Command Prompt" -ForegroundColor Yellow
Write-Host ""

Read-Host "Press Enter to exit"
