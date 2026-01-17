package egl

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
UNKNOWN    :: -1
DEFAULT_DISPLAY :: NativeDisplayType(uintptr(0))
NO_SYNC    :: 0
NO_IMAGE   :: 0

// Error returned by `GetError`.
Error :: enum {
    NONE                = 0x3038,
    NOT_INITIALIZED     = 0x3001,
    BAD_ACCESS          = 0x3002,
    BAD_ALLOC           = 0x3003,
    BAD_ATTRIBUTE       = 0x3004,
    BAD_CONFIG          = 0x3005,
    BAD_CONTEXT         = 0x3006,
    BAD_CURRENT_SURFACE = 0x3007,
    BAD_DISPLAY         = 0x3008,
    BAD_MATCH           = 0x3009,
    BAD_NATIVE_PIXMAP   = 0x300A,
    BAD_NATIVE_WINDOW   = 0x300B,
    BAD_PARAMETER       = 0x300C,
    BAD_SURFACE         = 0x300D,
    CONTEXT_LOST        = 0x300E,
}

@(default_calling_convention="c", link_prefix="egl")
foreign lib {
    GetError :: proc() -> Error ---
}
