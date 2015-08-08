{% if grains['cpuarch'] == 'AMD64' %}
    {% set PROGRAM_FILES = "C:\Program Files (x86)" %}
{% else %}
    {% set PROGRAM_FILES = "C:\Program Files" %}
{% endif %}
adobereader:
  10.1.4:
    full_name: 'Adobe Reader 10.1.4'
    installer: 'http://ardownload.adobe.com/pub/adobe/reader/win/10.x/10.1.4/en_US/AdbeRdr1014_en_US.exe'
    install_flags: '/msi EULA_ACCEPT=YES REMOVE_PREVIOUS=YES /qn /norestart'
    uninstaller: 'msiexec.exe'
    uninstall_flags: '/qn /x {AC76BA86-7AD7-1033-7B44-AA1000000001} /norestart'
    locale: en_US
    reboot: False
  9.5.0:
    full_name: 'Adobe Reader 9.5.0'
    installer: 'http://ardownload.adobe.com/pub/adobe/reader/win/9.x/9.5.0/en_US/AdbeRdr950_en_US.exe'
    install_flags: '/msi EULA_ACCEPT=YES REMOVE_PREVIOUS=YES /qn /norestart'
    uninstaller: 'msiexec.exe'
    uninstall_flags: '/qn /x {AC76BA86-7AD7-1033-7B44-A95000000001} /norestart'
    locale: en_US
    reboot: False
