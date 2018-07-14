def time_string(sec)
  hrs = sec / 3600
  sec -= hrs * 3600
  min = sec / 60
  sec -= min * 60
  sprintf("%02d:%02d:%02d", hrs, min, sec)
end
