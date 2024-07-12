import
  ./drawing,
  ../assets/assets

# if if no flag
proc arg0*() =
  drawInfo(true, arg)

# if -a --no-ascii flags
proc arg1*(arg: uint8) =
  drawInfo(false, arg)

# if -h --help flags
proc arg2*() =
  stdout.write(helpMsg) # write to stdout helpMsg from nitch/assets/assets file

# if -v --version flags
proc arg3*() =
  stdout.write(programVersion) # write to stdout programVersion from nitch/assets/assets file
