{% set PROGRAM_FILES = "%PROGRAMFILES(X86)%" %}
rstudio:
  '6.1.152023':
    full_name: 'R-Studio 6.1'
    installer: 'salt://installers/RStudio6.exe'
    install_flags: '/S'
    uninstaller: '{{ PROGRAM_FILES }}\R-Studio\Uninstall.exe'
    uninstall_flags: '/S'
    msiexec: False
    locale: en_US
    reboot: False
