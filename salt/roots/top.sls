base:
  '*':
    - global
lcl:
  'lcl*':
    - requirements
  'lcl-minion*':
    - mysql-server
    - mysql-client
