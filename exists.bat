echo off
IF EXIST e:\batch\text\test.txt (
echo "file exists" 
echo file exists at %date% %time% >> C:\exists.txt
) else (
echo "file does not exist"
echo file does not exist at %date% %time% >> C:\exists.txt
)
Pause