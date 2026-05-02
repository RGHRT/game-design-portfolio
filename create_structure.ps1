# 在当前目录下创建游戏策划作品集文件夹结构
# 使用方法：在 PowerShell 中进入你想放作品集的位置，然后运行：
# powershell -ExecutionPolicy Bypass -File .\create_structure.ps1

$Root = "game-design-portfolio"

$Dirs = @(
    "$Root\00_个人简历",
    "$Root\01_明日方舟资源系统分析\images",
    "$Root\02_明日方舟一图流分析\images",
    "$Root\03_RPG数值设计表",
    "$Root\04_无畏契约竞技体验分析"
)

foreach ($Dir in $Dirs) {
    New-Item -ItemType Directory -Force -Path $Dir | Out-Null
}

Write-Host "作品集文件夹结构已创建：$Root"
