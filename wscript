#!/usr/bin/env python

def options(cfg):
    cfg.load('compiler_c')

def configure(cfg):
    cfg.load('compiler_c vala')
    cfg.check_cfg(package='valum-0.1', uselib_store='VALUM', args='--libs --cflags')

def build(bld):
    bld.load('vala')
    bld.program(
        packages = ['valum-0.1'],
        target    = 'app',
        source    = 'src/app.vala',
        uselib    = ['VALUM'],
        vapi_dirs = ['vapi'])
