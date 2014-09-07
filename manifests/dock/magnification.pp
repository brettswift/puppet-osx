# Public: Magnify's the dock as you mouse over it.
class osx::dock::magnification {
  include osx::dock

  boxen::osx_defaults { 'Magnifies the doc':
    user   => $::boxen_user,
    key    => 'magnification',
    domain => 'com.apple.dock',
    value  => true,
    notify => Exec['killall Dock'];
  }
}
