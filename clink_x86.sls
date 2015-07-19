clink_x86:
  0.4.4:
    installer: 'salt://win/repo/clink/clink_0.4.4_setup.exe'
    full_name: 'Clink v0.4.4'
    reboot: False
    install_flags: '/S'
    uninstaller: '%Program Files%\clink\0.4.4\clink_uninstall_0.4.4.exe'
    uninstall_flags: '/S'
  0.4.3:
    installer: 'salt://win/repo/clink/clink_0.4.3_setup.exe'
    full_name: 'Clink v0.4.3'
    reboot: False
    install_flags: '/S'
    uninstaller: '%Program Files%\clink\0.4.3\clink_uninstall_0.4.3.exe'
    uninstall_flags: '/S'

# https://mridgers.github.io/clink/