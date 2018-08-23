# just 32-bit x86 installer available
{% set PROGRAM_FILES = "%ProgramFiles(x86)%" %}
# Source: http://www.safer-networking.org/
{% set versions = ['2.7.64.0', '2.4.40'] %}
spybot:
  {% for version in versions %}
  '{{ version }}':
    full_name: 'Spybot - Search & Destroy'
    installer: 'https://updates2.safer-networking.org/spybot1/spybotsd-2.7.64.0.exe'
    install_flags: '/VERYSILENT /SuppressMsgGBoxes /NoRestart /SP-'
    uninstaller: '{{ PROGRAM_FILES }}\Spybot - Search & Destroy 2\unins000.exe'
    uninstall_flags: '/VERYSILENT /SuppressMsgGBoxes /NoRestart /SP-'
    msiexec: False
    locale: en_US
    reboot: False
  {% endfor %}
# alternative download URLs
# http://www.spybotupdates.biz/files/spybot-2.4.exe
# http://spybot-mirror.com/files/spybot-2.4.exe
