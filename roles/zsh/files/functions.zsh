# Descriptions: Change brightness.
# Parameters:
# - $1: the brightness value
function chbrightness {
  xrandr --output eDP-1 --brightness ${1:?"The brightness value must be specified."}
}
