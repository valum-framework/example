#!/usr/bin/env python

top='.'
out='build'

def options(cfg):
    cfg.load('compiler_c')

def configure(cfg):
    cfg.load('compiler_c vala')
    cfg.check_cfg(package='valum', uselib_store='VALUM', args='--libs --cflags')

def build(bld):
    bld.load('vala')
    bld.program(
        packages = ['valum'],
        target    = 'app',
        source    = 'src/app.vala',
        uselib    = ['VALUM'],
        vapi_dirs = ['vapi'])
