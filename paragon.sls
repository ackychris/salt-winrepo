{% set PROGRAM_FILES = "%ProgramFiles%" %}
paragon:
  '18.05':
    full_name: 'Paragon'
    installer: 'salt://installers/Paragon.exe'
    install_flags: '/S'
    uninstaller: '{{ PROGRAM_FILES }}\Paragon\Uninstall.exe'
    uninstall_flags: '/S'
    msiexec: False
    locale: en_US
    reboot: False
