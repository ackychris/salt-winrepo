{% set PROGRAM_FILES = "%ProgramFiles(x86)%" %}
googletoolbar:
  '7.5.8231.2252':
    full_name: 'Google Toolbar for Internet Explorer'
    uninstaller: '{{ PROGRAM_FILES }}\Google\Google Toolbar\Component\GoogleToolbarManager_8B0481A9A34D47CD.exe'
    uninstall_flags: '/uninstall'
    ignore_epoch: True
    msiexec: False
    locale: en_US
    reboot: False
  '7.1.1920.1238':
    full_name: 'Google Toolbar for Internet Explorer'
    uninstaller: '{{ PROGRAM_FILES }}\Google\Google Toolbar\Component\GoogleToolbarManager_007014361504C04D.exe'
    uninstall_flags: '/uninstall'
    ignore_epoch: True
    msiexec: False
    locale: en_US
    reboot: False

