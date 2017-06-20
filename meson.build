project('example', 'c', 'vala')

glib_dep = dependency('glib-2.0')
gio_dep = dependency('glib-2.0')
gobject_dep = dependency('glib-2.0')
soup_dep = dependency('libsoup-2.4')
vsgi_dep = dependency('vsgi-0.3', fallback: ['valum', 'vsgi'])
valum_dep = dependency('valum-0.3', fallback: ['valum', 'valum'])

executable('app', 'src/app.vala',
           dependencies: [glib_dep, gio_dep, gobject_dep, soup_dep, vsgi_dep, valum_dep])
