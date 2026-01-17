// Used by vendor:OpenGL
gl_set_proc_address :: proc(p: rawptr, name: cstring) {
    (^rawptr)(p)^ = GetProcAddress(name)
}

// FIXME: why is EGLint replaced with int instead of i32 everywhere?

// Handle values from EGL_CAST, somehow ignored by bindgen

DONT_CARE  :: -1
NO_CONTEXT :: 0
NO_DISPLAY :: 0
NO_SURFACE :: 0
UNKNOWN :: -1
DEFAULT_DISPLAY :: NativeDisplayType(uintptr(0))
NO_SYNC :: 0
NO_IMAGE :: 0
