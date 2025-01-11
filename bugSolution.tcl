proc safeProc {a b} {
  if {$a == 0} {
    return 0
  }
  return [expr {$b / $a}]
}

proc saferProc {a b} {
  try {
    if {$a == 0} {
      return 0
    }
    return [expr {$b / $a}]
  } on error {msg} {
    puts stderr "Error: $msg"
    return -1
  }
}

puts [safeProc 0 10]
puts [saferProc 0 10]
puts [saferProc 5 10] 