import therapist, ../assets/assets

let spec* = (
  help: newHelpArg(),
  version: newMessageArg(@["-v", "--version"], programVersion, help="return version of program"),
  ascii: newCountArg(@["-a", "--ascii"], help="return fetch with ascii art"),
  square: newCountArg(@["-s", "--square"], help="return fetch with square corners")
)
