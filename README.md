# 📝 Sublime-Text-Patching

Simple Script For Patching `Unregister` SublimeText To `Unlimited User License` For MacOS, Linux, Windows.

- Work on Build `4180`
  - Hex Values `80 79 05 00 0F 94 C2` replace `C6 41 05 01 B2 00 90`
- For Other Version Build like `4169` Use
  - replace hex `80 78 05 00 0f 94 c1` with `C6 40 05 01 48 85 C9`

## ❓ How To Use
- Download SublimeText From [Official Website](https://www.sublimetext.com/download) if you haven't installed it yet.
- Open the app, And Closed it.
- Open Terminal or Iterm
- Clone This Repository
  ```bash
  git clone https://github.com/cmalf/STPatch.git
  ```
- Go to The Folder
  ```bash
  cd STPatch
  ```
- Or Download The zip File Here: [STPatch](https://github.com/cmalf/STPatch/archive/refs/heads/main.zip)
- Run The Following Command Below!
```bash
chmod +x run.sh
```
then..

```bash
bash run.sh
```
or

```bash
./run.sh
```

- Select Your OS (Operating System)
  
<img src="/SS/Screenshot 2024-10-14 at 20.21.20.png" width=600>

## ✎ᝰ. Note :

For Windows Users you don't need to run the script. Sorry I don't know how to use this "CMD" thing, it gives me a headache, <br>
So here are some steps: (this works for many windows users in my Forum members.)
- SublimeText Build `4180`
> * Install [HxD-Editor](https://mh-nexus.de/en/downloads.php?product=HxD20#) or visit the [website version](https://hexed.it/) `if you don't want to install it.`
> * Copy File sublime_text.exe (-> Open -> C:\Program Files\Sublime Text\sublime_text.exe") to any folder.
> * **(DON'T FORGET TO BACKUP YOUR EXE FILE)**
> * Open sublime_text.exe on hexed
> * Go to Search and in "Search for" put: 80 79 05 00 0F 94 C2
> * In Search Type select "Enable replace" and put: C6 41 05 01 B2 00 90
> * Click "Find next" then "Replace"
> * Click "Save as" then name it: sublime_text.exe
> * Copy your modified sublime_text.exe to directory Sublime Text (C:\Program Files\Sublime Text\)
- If it still doesn't work after patching (don't delete the modified file) try opening CMD then:
  - $ cd C:/Program Files/Sublime Text
  - $ icacls sublime_text.exe /grant:r "Administrators:(OI)(CI)F" "%USERNAME%:(OI)(CI)F"
  
