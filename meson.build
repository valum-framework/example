project('example', 'c', 'vala')

add_global_arguments(['-Wno-deprecated-declarations',
                      '-Wno-discarded-qualifiers',
                      '-Wno-implicit-function-declaration',
                      '-Wno-incompatible-pointer-types',
                      '-Wno-int-to-pointer-cast',
                      '-Wno-pointer-sign',
                      '-Wno-unused'], language: 'c')

add_global_arguments(['--enable-deprecated',
                      '--enable-experimental'], language: 'vala')

glib = dependency('glib-2.0')
gio = dependency('glib-2.0')
gobject = dependency('glib-2.0')
soup = dependency('libsoup-2.4')
vsgi = subproject('valum').get_variable('vsgi')
valum = subproject('valum').get_variable('valum')

executable('app', 'src/app.vala',
           dependencies: [glib, gio, gobject, soup, vsgi, valum])
