package egl

import "core:time"

when ODIN_OS == .Windows {
    foreign import lib "libEGL.lib"
} else when ODIN_OS == .Darwin {
    foreign import lib "libEGL.dylib"
} else when ODIN_OS == .Linux {
    foreign import lib "system:EGL"
}


NativeDisplayType :: rawptr
NativePixmapType  :: rawptr
NativeWindowType  :: rawptr

