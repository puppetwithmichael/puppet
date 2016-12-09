class users::michael (
  $name = 'michael'
) {
  user { 'michael':
    name => $name,
  }
}
