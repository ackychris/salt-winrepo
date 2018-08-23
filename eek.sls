{% set PROGRAM_FILES = "%C:\%" %}
eek:
  latest:
    full_name: 'Emsisoft Emergency Kit'
    installer: 'salt://installers/EmsisoftEmergencyKit.exe'
    install_flags: '/S'
    uninstaller: 'rmdir /S /Q C:\EEK'
    uninstall_flags: '/S'
    msiexec: False
    locale: en_US
    reboot: False

