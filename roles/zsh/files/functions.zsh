# Description: Change brightness.
# Parameters:
# - $1: the brightness value
function chbrightness {
  xrandr --output eDP-1 --brightness ${1:?"The brightness value must be specified."}
}


# Description: Run a python http server.
# Parameters:
# - $1: the port (by default, 20080)
function pysrv {
  python3 -m http.server ${1:-20080}
}