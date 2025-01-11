proc buggyProc {a b} {
  if {$a == 0} {
    return 0
  }
  return [expr {$b / $a}]
}

puts [buggyProc 0 10]