# 📁 ANUPAMA - Automated File Organizer

**🚀 Fast automated file organization tool for Windows.**

![Version](https://img.shields.io/badge/version-v1.0-brightgreen) ![Platform](https://img.shields.io/badge/platform-Windows-blue) ![License](https://img.shields.io/badge/license-MIT-orange) ![Files](https://img.shields.io/badge/categories-51-purple)

**[Features](#-key-features)** • **[Installation](#-quick-start)** • **[Usage](#basic-usage)** • **[Categories](#-file-categories)** • **[Workflow](#-multi-drive-workflow)** • **[Customization](#-customization)**

---

**ANUPAMA** is a file organization tool that returns clean, organized folders for any directory, using smart categorization. 
Simple, modular architecture and is optimized for speed. **subfinder** is built for doing one thing only - organizing files efficiently.

## 🎯 Key Features

- ⚡ **Fast & Efficient** - Organizes thousands of files in seconds
- 🎯 **Universal Support** - Works on any drive, folder, or network location
- 📂 **51+ Categories** - Comprehensive file type coverage
- 🎨 **Smart Organization** - Logical folder structures
- 🔍 **Pre-Analysis** - Shows breakdown before organizing
- 📊 **Progress Tracking** - Real-time feedback
- 🛡️ **Safe Operation** - Non-destructive, only moves files
- ⚡ **Global Access** - Run from anywhere via PATH

## 🚀 Quick Start

### Basic Usage
### Organize Downloads folder
````bash
ANUPAMA
````

### Organize any directory
```
ANUPAMA "C:\ProjectFiles" 
ANUPAMA "D:\Downloads"
ANUPAMA "E:\PhotoArchive\UnsortedPhotos"
```

### One-Line Installation
> [!IMPORTANT]
> ### Run as Administrator
```powershell

iex (iwr -useb "https://raw.githubusercontent.com/gigachad80/Anupama/main/install-anupama.ps1").Content
```

## 🎯 Requirements

- Windows 10+ (build 16257+)
- Command Prompt / Windows Terminal
- Admin privileges (for system directories)

## 📂 File Categories

**Documents**
- 📝 **MD-FILES**: `.md`, `.markdown`
- 📕 **PDF-FILES**: `.pdf` 
- 🏢 **OFFICE-DOCS**: `.doc`, `.docx`, `.xls`, `.xlsx`, `.ppt`, `.pptx`
- 📃 **TEXT-FILES**: `.txt`, `.rtf`, `.odt`, `.ods`, `.odp`
- 📚 **EBOOK-FILES**: `.epub`, `.mobi`, `.azw`, `.azw3`, `.fb2`, `.lit`

**Images & Graphics**
- 🖼️ **PNG-JPGs**: `.jpg`, `.jpeg`, `.png`
- 🎨 **VECTOR-GRAPHICS**: `.svg`, `.ai`, `.eps`
- 📷 **RAW-PHOTOS**: `.raw`, `.cr2`, `.nef`, `.arw`, `.dng`
- 🎭 **GIF-WEBP**: `.gif`, `.webp`, `.bmp`, `.tiff`, `.tif`
- 🎭 **PHOTOSHOP-FILES**: `.psd`, `.psb`, `.xcf`, `.sketch`

**Code & Development**
- 🐹 **GO-FILES**: `.go`
- 🐍 **PYTHON-FILES**: `.py`
- 🌐 **HTML-FILES**: `.html`, `.htm`
- ⚡ **JAVASCRIPT-FILES**: `.js`, `.ts`, `.jsx`, `.tsx`, `.mjs`
- 🎨 **CSS-STYLE**: `.css`, `.less`
- 💄 **SASS-SCSS**: `.scss`, `.sass`
- ⚙️ **C-CPP-FILES**: `.c`, `.cpp`, `.h`, `.hpp`, `.cc`, `.cxx`
- ☕ **JAVA-FILES**: `.java`, `.class`, `.jar`
- 🐘 **PHP-FILES**: `.php`, `.php3`, `.php4`, `.php5`, `.phtml`
- 💎 **RUBY-FILES**: `.rb`, `.erb`, `.rake`
- 🐚 **SHELL-SCRIPTS**: `.sh`, `.bash`, `.zsh`, `.bat`, `.cmd`, `.ps1`
- ⚙️ **CONFIG-FILES**: `.json`, `.xml`, `.yaml`, `.yml`, `.toml`, `.ini`, `.cfg`, `.conf`

**Media Files**
- 🎵 **AUDIO-FILES**: `.mp3`, `.wav`, `.flac`, `.aac`, `.ogg`, `.m4a`, `.wma`
- 🎬 **VIDEO-FILES**: `.mp4`, `.avi`, `.mkv`, `.mov`, `.wmv`, `.flv`, `.webm`, `.m4v`

**Archives & Compressed**
- 📦 **7Z-FILES**: `.7z`
- 📦 **TAR-ONES**: `.tar`, `.tar.gz`, `.tgz`
- 🗜️ **ZIP-RAR**: `.zip`, `.rar`, `.gz`, `.bz2`
- 🗜️ **XZ-COMPRESSED**: `.xz`, `.lzma`, `.lz`
- 📦 **INSTALLER-PACKAGES**: `.msi`, `.exe`, `.deb`, `.rpm`, `.dmg`, `.pkg`

**System & Virtual Machines**
- 💿 **DISK-IMAGES**: `.iso`, `.img`, `.vhd`, `.vhdx`, `.vmdk`, `.qcow2`
- 🖥️ **VIRTUAL-MACHINES**: `.ova`, `.ovf`, `.vbox`, `.vmx`
- 💾 **BACKUP-FILES**: `.bak`, `.backup`, `.old`, `.orig`, `.tmp`

**Database & Data**
- 🗄️ **DB-FILES**: `.db`, `.sqlite`, `.sqlite3`, `.mdb`, `.accdb`
- 🗄️ **SQL-FILES**: `.sql`, `.ddl`, `.dml`
- 📊 **EXCHANGE-FORMATS**: `.csv`, `.tsv`, `.jsonl`, `.ndjson`, `.parquet`
- 🗃️ **SERIALIZED-DATA**: `.pickle`, `.pkl`, `.dat`, `.bin`, `.msgpack`

**Web Development**
- 🌐 **TEMPLATE-FILES**: `.tpl`, `.mustache`, `.hbs`, `.ejs`, `.pug`, `.jade`
- 🔒 **MANIFEST-LOCK**: `.lock`, `.manifest`, `.map`, `.min.js`, `.min.css`

**Security & Certificates**
- 🔐 **CERT-KEYS**: `.pem`, `.crt`, `.cer`, `.p12`, `.pfx`, `.key`, `.pub`

**Design & 3D**
- 🎲 **3D-MODELS**: `.obj`, `.fbx`, `.dae`, `.3ds`, `.blend`, `.max`, `.ma`, `.mb`
- 📐 **CAD-FILES**: `.dwg`, `.dxf`, `.step`, `.stp`, `.iges`, `.igs`

**Executables & Libraries**
- ⚙️ **BINARY-FILES**: `.bin`, `.exe`, `.app`, `.com`, `.scr`
- 📚 **LIBRARY-FILES**: `.dll`, `.so`, `.dylib`, `.lib`, `.a`

**Fonts & Documentation**
- 🔤 **FONT-FILES**: `.ttf`, `.otf`, `.woff`, `.woff2`, `.eot`
- 📖 **README-FILES**: `.readme`, `.license`, `.changelog`, `.authors`

**Logs & Temporary**
- 📝 **LOG-FILES**: `.log`, `.out`, `.err`
- 🗑️ **CACHE-TEMP**: `.cache`, `.temp`, `.swp`, `.swo`, `.~`

---

## 🎯 Example Output

```
🎯 === ANUPAMA - Batch Downloads File Organizer ===
⏰ Started at: Mon 06/30/2025 14:32:15.45

📁 Using directory: C:\Users\YourName\Downloads

🔍 === Pre-Organization Analysis ===
📊 Total files: 247
📋 File extensions found:
  📕 .pdf: 23 files
  🖼️ .jpg: 45 files
  🗜️ .zip: 12 files
  🎬 .mp4: 8 files
  📄 .docx: 15 files
  ...

🛠️ === Creating Folders ===
✅ [+] Created: PDF-FILES
✅ [+] Created: PNG-JPGs
✅ [+] Created: ZIPPED\ZIP-RAR
...

📦 === Organizing Files ===
🔄 Processing PDF-FILES...
  ✅ [OK] Moved 23 files to PDF-FILES

🔄 Processing PNG-JPGs...
  ✅ [OK] Moved 45 files to PNG-JPGs
...

📋 === Results ===
📁 [Folder] PDF-FILES: 23 files
    📕 - document1.pdf
    📕 - report2024.pdf
    📕 - manual.pdf
    📕 ... and 20 more

📊 === Summary ===
📊 Total files: 247
✅ Organized: 247
⚠️ Remaining: 0
🏁 Completed at: Mon 06/30/2025 14:32:28.12
```

---

## 💡 Multi-Drive Workflow

Here's how I use ANUPAMA across my entire system:

### 🌅 **Daily Cleanup Routine**

```batch
# Morning cleanup across all drives
ANUPAMA                                    # Default Downloads
ANUPAMA "D:\Downloads"                     # Secondary downloads
ANUPAMA "E:\TempFiles"                     # External temp storage
```

### 🎯 **Project-Specific Organization**

```batch
# Organize project assets by client/project
ANUPAMA "D:\Projects\ClientA\Assets\Mixed"
ANUPAMA "D:\Projects\ClientB\Resources\Unsorted"
ANUPAMA "E:\Backup\ProjectArchive\Mixed"
```

### 🗂️ **Drive-by-Drive Systematic Cleanup**

```batch
# Systematic organization across all storage
ANUPAMA "C:\Users\%USERNAME%\Desktop\Downloads"
ANUPAMA "D:\GameMods\Unsorted"
ANUPAMA "E:\PhotoBackup\Mixed"
ANUPAMA "F:\VideoProjects\RawFootage"
```

### 📱 **Mobile & External Device Organization**

```batch
# Organize transferred files from mobile devices
ANUPAMA "G:\Phone_Backup\Camera"
ANUPAMA "H:\USB_Transfer\MixedFiles"
ANUPAMA "I:\ExternalHDD\Downloads"
```

### 🌐 **Cloud & Network Folder Organization**

```batch
# Organize cloud sync folders
ANUPAMA "C:\Users\%USERNAME%\OneDrive\WorkFiles"
ANUPAMA "C:\Users\%USERNAME%\Dropbox\ClientAssets"
ANUPAMA "\\NetworkServer\TeamShared\UnsortedFiles"
```

---

## 🔧 Advanced Multi-Drive Usage Tips

### 📋 **Batch Processing Multiple Directories**

Create a batch file to organize multiple folders at once:

```batch
@echo off
echo Organizing all project folders...
ANUPAMA "D:\Project1\Assets"
ANUPAMA "D:\Project2\Downloads"
ANUPAMA "D:\Project3\Resources"
ANUPAMA "E:\Backup\Mixed"
echo All folders organized!
pause
```

### 🎯 **Drive-Specific Organization Strategies**

#### 💾 **C: Drive (System Drive)**

```batch
# Keep system drive clean
ANUPAMA "C:\Users\%USERNAME%\Downloads"
ANUPAMA "C:\Users\%USERNAME%\Desktop\TempFiles"
ANUPAMA "C:\Temp\Downloads"
```

#### 🗂️ **D: Drive (Data Drive)**

```batch
# Organize data drive by purpose
ANUPAMA "D:\Downloads"
ANUPAMA "D:\Projects\Unsorted"
ANUPAMA "D:\Assets\Mixed"
ANUPAMA "D:\Backup\UnsortedFiles"
```

#### 📱 **External Drives**

```batch
# Organize external storage
ANUPAMA "E:\USB_Backup\MixedFiles"
ANUPAMA "F:\ExternalHDD\Downloads"
ANUPAMA "G:\PortableDrive\TempFiles"
```

---

## 🔧 Customization

### 🎛️ Adding Custom File Extensions

To add new file categories or modify existing ones, you need to edit the batch script between **lines 81-260** where all categories are defined. Here's how:

#### 📝 Method 1: Adding Extensions to Existing Categories

Find the category you want to modify and add your extensions:

```batch
REM Example: Adding .webm to video files (around line 190)
set "category15_folder=MEDIA\VIDEO-FILES"
set "category15_exts=.mp4 .avi .mkv .mov .wmv .flv .webm .m4v .your_new_extension"
```

#### 🆕 Method 2: Creating New Categories

Add a completely new category by following this pattern:

```batch
REM Add this after the last category (around line 255)
set "category52_folder=YOUR-CATEGORY\SUB-FOLDER"
set "category52_exts=.ext1 .ext2 .ext3"

REM Don't forget to update the category count!
set "category_count=52"
```

#### 🎯 Popular Extensions You Might Want to Add:

**📱 Mobile Development:**

```batch
set "category52_folder=MOBILE\ANDROID-FILES"
set "category52_exts=.apk .aab .gradle"

set "category53_folder=MOBILE\IOS-FILES"  
set "category53_exts=.ipa .xcodeproj .swift"
```

**🎮 Gaming Files:**

```batch
set "category54_folder=GAMES\GAME-FILES"
set "category54_exts=.rom .sav .pak .wad .mod"
```

**🖼️ Additional Image Formats:**

```batch
set "category55_folder=IMAGES\SPECIALIZED-FORMATS"
set "category55_exts=.heic .avif .jp2 .jxr .ico"
```

**☁️ Cloud & DevOps:**

```batch
set "category56_folder=DEVOPS\CONTAINER-FILES"
set "category56_exts=.dockerfile .docker .k8s .helm"

set "category57_folder=DEVOPS\CLOUD-CONFIG"
set "category57_exts=.tf .tfvars .cloudformation .arm"
```

#### 🗑️ Removing Extensions

To remove extensions, simply delete them from the extension list:

```batch
REM Before: Multiple extensions
set "category15_exts=.mp4 .avi .mkv .mov .wmv .flv .webm .m4v"

REM After: Removed .wmv and .flv
set "category15_exts=.mp4 .avi .mkv .mov .webm .m4v"
```

#### ⚠️ Important Customization Notes:

1. **🔢 Always update `category_count`** when adding new categories
2. **📐 Use consistent naming**: Keep folder names descriptive and organized
3. **🔡 Extensions must include the dot**: `.txt` not `txt`
4. **📁 Use backslashes for subfolders**: `CATEGORY\SUBCATEGORY`
5. **💾 Test with sample files** before running on your entire Downloads folder
6. **📋 Keep a backup** of your original script before making changes

#### 🎯 Quick Reference: Category Definition Format

```batch
set "category[NUMBER]_folder=[FOLDER_NAME]"
set "category[NUMBER]_exts=.[ext1] .[ext2] .[ext3]"
```

**Examples:**

```batch
set "category25_folder=MY-DOCUMENTS\CONTRACTS"
set "category25_exts=.contract .agreement .legal"

set "category26_folder=CREATIVE\AUDIO-PROJECTS"  
set "category26_exts=.flp .ptf .logic .reason"
```

### 🛠️ Advanced Customization Tips

- **🎨 Organize by project**: Create categories like `PROJECT-A\ASSETS`, `PROJECT-B\CODE`
- **📅 Time-based sorting**: Use folders like `2024-FILES\DOWNLOADS`, `2025-FILES\RECENT`
- **👤 Personal workflow**: Adapt categories to match your specific work/hobby needs
- **🏢 Company structure**: Mirror your organization's file structure for consistency

---

## 🛡️ Safety Features

- 🔒 **Non-destructive**: Only moves files, doesn't delete anything
- 📁 **Existing folder handling**: Won't overwrite existing organized folders
- ⚠️ **Error handling**: Gracefully handles access permission issues
- 💾 **Backup recommendation**: Always backup important files before organizing

---

## 🔧 Troubleshooting

### 🎨 Colors not showing

- ✅ Ensure you're using Windows 10 build 16257 or later
- 💻 Use Windows Terminal for best compatibility
- ⚠️ Some older Command Prompt versions may not support ANSI colors

### 🔐 Permission errors

- 👑 Run as Administrator for system directories
- ✅ Ensure you have write permissions to the target directory

### 📁 Files not moving

- 🔒 Check if files are currently in use by other applications
- ✅ Verify file extensions match the defined categories exactly

### 🛤️ Command not found

- ✅ Verify `C:\tools` is in your system PATH
- 🔄 Restart Command Prompt after PATH changes
- 📁 Ensure the script is named `ANUPAMA.bat` in `C:\tools\`

---

## 🤝 Contributing

To suggest new file categories or improvements:
1. 🔍 Identify common file extensions that aren't covered
2. 💡 Propose logical folder structures  
3. 🎯 Consider grouping related file types together
---

## 📈 Version History

- 🎉 **v1.0**: Initial release with 51 file categories
- 📂 Comprehensive file type coverage
- 🎨 ANSI color support
- 📊 Detailed analysis and reporting
- ⚡ Global PATH access optimized

---

## 📄 License

MIT


🌟 **If this tool saves you time like it saves mine, give it a star!** 

💡 **Pro Tip**: Use Windows Terminal with "Cascadia Code" font for the best experience with emojis and colors!

🎯 **Perfect for**: Developers, content creators, system administrators, digital minimalists, and anyone who values organized workflows!

---

*Made with ❤️ for personal productivity and digital minimalism*

**Built by someone who believes**: *A clean digital workspace leads to a clear, productive mind!* 🧠✨
