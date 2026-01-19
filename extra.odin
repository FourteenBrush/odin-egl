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

@(default_calling_convention="c", link_prefix="egl")
foreign lib {
    GetError :: proc() -> Error ---
    QueryAPI :: proc() -> API ---
}

// Error returned by `GetError`.
Error :: enum i32 {
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

API :: enum i32 {
    // Possibly returned by QueryAPI, must not be passed to BindAPI.
    NONE      = 0x3038,
    OPENGL    = 0x30A2,
    OPENGL_ES = 0x30A0,
    OPENVG    = 0x30A1,
}

// Type of `Sync` objects to be created, may be extended by casting
// extension values to this enum type.
SyncType :: enum i32 {
    FENCE    = 0x30F9,
    CL_EVENT = 0x30FE,

    // https://github.com/google/angle/blob/ea74fad79ed7e920c77b1fee930388040c3619d2/src/libANGLE/EGLSync.cpp#L26-L38

    EXT_GLOBAL_FENCE_ANGLE             = 0x34DE,
    EXT_METAL_COMMANDS_SCHEDULED_ANGLE = 0x34E0,
    EXT_METAL_SHARED_EVENT_ANGLE       = 0x34D8,
    EXT_NATIVE_FENCE_ANDROID           = 0x3144,
    EXT_NATIVE_FENCE_FD_ANDROID        = 0x3145,
    EXT_REUSABLE_KHR                   = 0x30FA,
    EXT_CUDA_EVENT_NV                  = 0x323C,
    EXT_NEW_FRAME_NV                   = 0x321F,
}

// Type of resource used as image source, may be extended by casting
// extension values to this enum type.
// Contains values that may only be passed to the CreateImageKHR procedure variant.
ImageTarget :: enum i32 {
    GL_TEXTURE_2D                           = 0x305F,
    GL_TEXTURE_CUBE_MAP_POSITIVE_X          = 0x30B3,
    GL_TEXTURE_CUBE_MAP_NEGATIVE_X          = 0x30B4,
    GL_TEXTURE_CUBE_MAP_POSITIVE_Y          = 0x30B5,
    GL_TEXTURE_CUBE_MAP_NEGATIVE_Y          = 0x30B6,
    GL_TEXTURE_CUBE_MAP_POSITIVE_Z          = 0x30B7,
    GL_TEXTURE_CUBE_MAP_NEGATIVE_Z          = 0x30B8,
    GL_TEXTURE_3D                           = 0x30B2,
    GL_RENDERBUFFER                         = 0x30B9,

    // extensions below

    // defined in EGL_KHR_gl_texture_2D_image
    EXT_GL_TEXTURE_2D_KHR                   = 0x30B1,
    // defined in EGL_KHR_gl_texture_3D_image
    EXT_GL_TEXTURE_3D_KHR                   = 0x30B2,
    // defined in EGL_KHR_gl_texture_cubemap_image
    EXT_GL_TEXTURE_CUBE_MAP_POSITIVE_X_KHR = 0x30B3,
    // defined in EGL_KHR_gl_texture_cubemap_image
    EXT_GL_TEXTURE_CUBE_MAP_NEGATIVE_X_KHR = 0x30B4,
    // defined in EGL_KHR_gl_texture_cubemap_image
    EXT_GL_TEXTURE_CUBE_MAP_POSITIVE_Y_KHR = 0x30B5,
    // defined in EGL_KHR_gl_texture_cubemap_image
    EXT_GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_KHR = 0x30B6,
    // defined in EGL_KHR_gl_texture_cubemap_image
    EXT_GL_TEXTURE_CUBE_MAP_POSITIVE_Z_KHR = 0x30B7,
    // defined in EGL_KHR_gl_texture_cubemap_image
    EXT_GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_KHR = 0x30B8,
    // defined in EGL_KHR_gl_renderbuffer_image
    EXT_GL_RENDERBUFFER_KHR                 = 0x30B9,

    // defined in EGL_KHR_image_pixmap
    EXT_NATIVE_PIXMAP_KHR                   = 0x30B0,
    // defined in EGL_ANDROID_image_native_buffer
    EXT_NATIVE_BUFFER_ANDROID               = 0x3140,
    // defined in EGL_QNX_image_native_buffer
    EXT_NATIVE_BUFFER_QNX                   = 0x3551,
    // defined in EGL_TIZEN_image_native_buffer
    EXT_NATIVE_BUFFER_TIZEN                 = 0x32A0,
    // defined in EGL_TIZEN_image_native_surface
    EXT_NATIVE_SURFACE_TIZEN                = 0x32A1,

    // defined in EGL_KHR_vg_parent_image
    EXT_VG_PARENT_IMAGE_KHR                 = 0x30BA,
    // defined in EGL_WL_bind_wayland_display
    EXT_WAYLAND_BUFFER_WL                   = 0x31D5,
    // defined in EGL_MESA_drm_image
    EXT_DRM_BUFFER_MESA                     = 0x31D3,
    // defined in EGL_EXT_image_dma_buf_import
    EXT_LINUX_DMA_BUF_EXT                   = 0x3270,
    // defined in EGL_NV_stream_consumer_eglimage
    EXT_STREAM_CONSUMER_IMAGE_NV            = 0x3373,

    // ANGLE extensions
    // defined in EGL_ANGLE_d3d_texture_client_buffer
    EXT_D3D_TEXTURE_ANGLE                   = 0x33A3,
    // defined in EGL_ANGLE_d3d11_texture_image
    EXT_D3D11_TEXTURE_ANGLE                 = 0x3484,
    // defined in EGL_ANGLE_metal_texture_client_buffer
    EXT_METAL_TEXTURE_ANGLE                 = 0x34A7,
    // defined in EGL_ANGLE_vulkan_image
    EXT_VULKAN_IMAGE_ANGLE                  = 0x34D3,

    // base protocol KHR variants
    TEXTURE_2D_KHR                          = 0x30B1,
    TEXTURE_3D_KHR                          = 0x30B2,
    RENDERBUFFER_KHR                        = 0x30B9,
}

// TODO: add KHR procs (eg eglCreateImageKHR) and extensions

BufType :: enum i32 {
    OPENVG_IMAGE                            = 03096,

    // ANGLE extensions
    EXT_IOSURFACE_ANGLE                     = 0x3454,
    EXT_D3D_TEXTURE_ANGLE                   = 0x33A3,
    // defined in EGL_ANGLE_d3d_share_handle_client_buffer
    EXT_D3D_TEXTURE_2D_SHARE_HANDLE_ANGLE   = 0x3200,
}
