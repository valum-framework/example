#!/usr/bin/env python

def options(cfg):
    cfg.load('compiler_c')

def configure(cfg):
    cfg.load('compiler_c vala')
    cfg.check_cfg(package='valum', uselib_store='VALUM', args='--libs --cflags')
    cfg.check_cfg(package='vsgi-http', uselib_store='VSGI_HTTP', args='--libs --cflags')

def build(bld):
    bld.load('compiler_c vala')
    bld.program(
        packages = 'valum vsgi-http',
        target   = 'app',
        source   = 'src/app.vala',
        use      = 'VALUM VSGI_HTTP')
