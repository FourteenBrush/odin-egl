package egl

import "core:c"

import "core:time"

// silence explicitly added c import so we have less manual cleanup to do
_ :: c

/*
    WHEN THIS ANNOTATION IS PRESENT ON AN .odin FILE, THIS FILE IS GENERATED
    AND SHOULD NOT BE MODIFIED MANUALLY!!
*/

when ODIN_OS == .Windows {
    foreign import lib "libEGL.lib"
} else when ODIN_OS == .Darwin {
    foreign import lib "libEGL.dylib"
} else when ODIN_OS == .Linux {
    foreign import lib "system:EGL"
}


EGLEXT_VERSION             :: 20240909
KHR_cl_event               :: 1
CL_EVENT_HANDLE_KHR           :: 0x309C
SYNC_CL_EVENT_KHR             :: 0x30FE
SYNC_CL_EVENT_COMPLETE_KHR    :: 0x30FF
KHR_cl_event2              :: 1

SyncKHR                   :: distinct rawptr
AttribKHR                 :: distinct int
PFNEGLCREATESYNC64KHRPROC :: proc "c" (dpy: Display, type: Enum, attrib_list: ^AttribKHR) -> SyncKHR

KHR_client_get_all_proc_addresses              :: 1
KHR_config_attribs                             :: 1
CONFORMANT_KHR                                 :: 0x3042
VG_COLORSPACE_LINEAR_BIT_KHR                   :: 0x0020
VG_ALPHA_FORMAT_PRE_BIT_KHR                    :: 0x0040
KHR_context_flush_control                      :: 1
CONTEXT_RELEASE_BEHAVIOR_NONE_KHR              :: 0
CONTEXT_RELEASE_BEHAVIOR_KHR                   :: 0x2097
CONTEXT_RELEASE_BEHAVIOR_FLUSH_KHR             :: 0x2098
KHR_create_context                             :: 1
CONTEXT_MAJOR_VERSION_KHR                      :: 0x3098
CONTEXT_MINOR_VERSION_KHR                      :: 0x30FB
CONTEXT_FLAGS_KHR                              :: 0x30FC
CONTEXT_OPENGL_PROFILE_MASK_KHR                :: 0x30FD
CONTEXT_OPENGL_RESET_NOTIFICATION_STRATEGY_KHR :: 0x31BD
NO_RESET_NOTIFICATION_KHR                      :: 0x31BE
LOSE_CONTEXT_ON_RESET_KHR                      :: 0x31BF
CONTEXT_OPENGL_DEBUG_BIT_KHR                   :: 0x00000001
CONTEXT_OPENGL_FORWARD_COMPATIBLE_BIT_KHR      :: 0x00000002
CONTEXT_OPENGL_ROBUST_ACCESS_BIT_KHR           :: 0x00000004
CONTEXT_OPENGL_CORE_PROFILE_BIT_KHR            :: 0x00000001
CONTEXT_OPENGL_COMPATIBILITY_PROFILE_BIT_KHR   :: 0x00000002
OPENGL_ES3_BIT_KHR                             :: 0x00000040
KHR_create_context_no_error                    :: 1
CONTEXT_OPENGL_NO_ERROR_KHR                    :: 0x31B3
KHR_debug                                      :: 1

LabelKHR     :: distinct rawptr
ObjectKHR    :: distinct rawptr
DEBUGPROCKHR :: proc "c" (error: Enum, command: cstring, messageType: i32, threadLabel: LabelKHR, objectLabel: LabelKHR, message: cstring)

OBJECT_THREAD_KHR             :: 0x33B0
OBJECT_DISPLAY_KHR            :: 0x33B1
OBJECT_CONTEXT_KHR            :: 0x33B2
OBJECT_SURFACE_KHR            :: 0x33B3
OBJECT_IMAGE_KHR              :: 0x33B4
OBJECT_SYNC_KHR               :: 0x33B5
OBJECT_STREAM_KHR             :: 0x33B6
DEBUG_MSG_CRITICAL_KHR        :: 0x33B9
DEBUG_MSG_ERROR_KHR           :: 0x33BA
DEBUG_MSG_WARN_KHR            :: 0x33BB
DEBUG_MSG_INFO_KHR            :: 0x33BC
DEBUG_CALLBACK_KHR            :: 0x33B8

PFNEGLDEBUGMESSAGECONTROLKHRPROC :: proc "c" (callback: DEBUGPROCKHR, attrib_list: ^Attrib) -> i32
PFNEGLQUERYDEBUGKHRPROC          :: proc "c" (attribute: i32, value: ^Attrib) -> b32
PFNEGLLABELOBJECTKHRPROC         :: proc "c" (display: Display, objectType: Enum, object: ObjectKHR, label: LabelKHR) -> i32

KHR_display_reference :: 1
TRACK_REFERENCES_KHR          :: 0x3352

PFNEGLQUERYDISPLAYATTRIBKHRPROC :: proc "c" (dpy: Display, name: i32, value: ^Attrib) -> b32

KHR_fence_sync                   :: 1
SYNC_PRIOR_COMMANDS_COMPLETE_KHR :: 0x30F0
SYNC_CONDITION_KHR               :: 0x30F8
SYNC_FENCE_KHR                   :: 0x30F9

PFNEGLCREATESYNCKHRPROC     :: proc "c" (dpy: Display, type: Enum, attrib_list: ^i32) -> SyncKHR
PFNEGLDESTROYSYNCKHRPROC    :: proc "c" (dpy: Display, sync: SyncKHR) -> b32
PFNEGLCLIENTWAITSYNCKHRPROC :: proc "c" (dpy: Display, sync: SyncKHR, flags: i32, timeout: time.Time) -> i32
PFNEGLGETSYNCATTRIBKHRPROC  :: proc "c" (dpy: Display, sync: SyncKHR, attribute: i32, value: ^i32) -> b32

KHR_get_all_proc_addresses         :: 1
KHR_gl_colorspace                  :: 1
GL_COLORSPACE_KHR                  :: 0x309D
GL_COLORSPACE_SRGB_KHR             :: 0x3089
GL_COLORSPACE_LINEAR_KHR           :: 0x308A
KHR_gl_renderbuffer_image          :: 1
GL_RENDERBUFFER_KHR                :: 0x30B9
KHR_gl_texture_2D_image            :: 1
GL_TEXTURE_2D_KHR                  :: 0x30B1
GL_TEXTURE_LEVEL_KHR               :: 0x30BC
KHR_gl_texture_3D_image            :: 1
GL_TEXTURE_3D_KHR                  :: 0x30B2
GL_TEXTURE_ZOFFSET_KHR             :: 0x30BD
KHR_gl_texture_cubemap_image       :: 1
GL_TEXTURE_CUBE_MAP_POSITIVE_X_KHR :: 0x30B3
GL_TEXTURE_CUBE_MAP_NEGATIVE_X_KHR :: 0x30B4
GL_TEXTURE_CUBE_MAP_POSITIVE_Y_KHR :: 0x30B5
GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_KHR :: 0x30B6
GL_TEXTURE_CUBE_MAP_POSITIVE_Z_KHR :: 0x30B7
GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_KHR :: 0x30B8
KHR_image                          :: 1

ImageKHR :: distinct rawptr

NATIVE_PIXMAP_KHR             :: 0x30B0

PFNEGLCREATEIMAGEKHRPROC  :: proc "c" (dpy: Display, ctx: Context, target: Enum, buffer: ClientBuffer, attrib_list: ^i32) -> ImageKHR
PFNEGLDESTROYIMAGEKHRPROC :: proc "c" (dpy: Display, image: ImageKHR) -> b32

KHR_image_base                    :: 1
IMAGE_PRESERVED_KHR               :: 0x30D2
KHR_image_pixmap                  :: 1
KHR_lock_surface                  :: 1
READ_SURFACE_BIT_KHR              :: 0x0001
WRITE_SURFACE_BIT_KHR             :: 0x0002
LOCK_SURFACE_BIT_KHR              :: 0x0080
OPTIMAL_FORMAT_BIT_KHR            :: 0x0100
MATCH_FORMAT_KHR                  :: 0x3043
FORMAT_RGB_565_EXACT_KHR          :: 0x30C0
FORMAT_RGB_565_KHR                :: 0x30C1
FORMAT_RGBA_8888_EXACT_KHR        :: 0x30C2
FORMAT_RGBA_8888_KHR              :: 0x30C3
MAP_PRESERVE_PIXELS_KHR           :: 0x30C4
LOCK_USAGE_HINT_KHR               :: 0x30C5
BITMAP_POINTER_KHR                :: 0x30C6
BITMAP_PITCH_KHR                  :: 0x30C7
BITMAP_ORIGIN_KHR                 :: 0x30C8
BITMAP_PIXEL_RED_OFFSET_KHR       :: 0x30C9
BITMAP_PIXEL_GREEN_OFFSET_KHR     :: 0x30CA
BITMAP_PIXEL_BLUE_OFFSET_KHR      :: 0x30CB
BITMAP_PIXEL_ALPHA_OFFSET_KHR     :: 0x30CC
BITMAP_PIXEL_LUMINANCE_OFFSET_KHR :: 0x30CD
LOWER_LEFT_KHR                    :: 0x30CE
UPPER_LEFT_KHR                    :: 0x30CF

PFNEGLLOCKSURFACEKHRPROC   :: proc "c" (dpy: Display, surface: Surface, attrib_list: ^i32) -> b32
PFNEGLUNLOCKSURFACEKHRPROC :: proc "c" (dpy: Display, surface: Surface) -> b32

KHR_lock_surface2     :: 1
BITMAP_PIXEL_SIZE_KHR         :: 0x3110
KHR_lock_surface3     :: 1

PFNEGLQUERYSURFACE64KHRPROC :: proc "c" (dpy: Display, surface: Surface, attribute: i32, value: ^AttribKHR) -> b32

KHR_mutable_render_buffer     :: 1
MUTABLE_RENDER_BUFFER_BIT_KHR :: 0x1000
KHR_no_config_context         :: 1
KHR_partial_update            :: 1
BUFFER_AGE_KHR                :: 0x313D

PFNEGLSETDAMAGEREGIONKHRPROC :: proc "c" (dpy: Display, surface: Surface, rects: ^i32, n_rects: i32) -> b32

KHR_platform_android        :: 1
PLATFORM_ANDROID_KHR          :: 0x3141
KHR_platform_gbm            :: 1
PLATFORM_GBM_KHR              :: 0x31D7
KHR_platform_wayland        :: 1
PLATFORM_WAYLAND_KHR          :: 0x31D8
KHR_platform_x11            :: 1
PLATFORM_X11_KHR              :: 0x31D5
PLATFORM_X11_SCREEN_KHR       :: 0x31D6
KHR_reusable_sync           :: 1
SYNC_STATUS_KHR               :: 0x30F1
SIGNALED_KHR                  :: 0x30F2
UNSIGNALED_KHR                :: 0x30F3
TIMEOUT_EXPIRED_KHR           :: 0x30F5
CONDITION_SATISFIED_KHR       :: 0x30F6
SYNC_TYPE_KHR                 :: 0x30F7
SYNC_REUSABLE_KHR             :: 0x30FA
SYNC_FLUSH_COMMANDS_BIT_KHR   :: 0x0001
FOREVER_KHR                   :: 0xFFFFFFFFFFFFFFFF

PFNEGLSIGNALSYNCKHRPROC :: proc "c" (dpy: Display, sync: SyncKHR, mode: Enum) -> b32

KHR_stream :: 1

StreamKHR :: distinct rawptr

CONSUMER_LATENCY_USEC_KHR            :: 0x3210
PRODUCER_FRAME_KHR                   :: 0x3212
CONSUMER_FRAME_KHR                   :: 0x3213
STREAM_STATE_KHR                     :: 0x3214
STREAM_STATE_CREATED_KHR             :: 0x3215
STREAM_STATE_CONNECTING_KHR          :: 0x3216
STREAM_STATE_EMPTY_KHR               :: 0x3217
STREAM_STATE_NEW_FRAME_AVAILABLE_KHR :: 0x3218
STREAM_STATE_OLD_FRAME_AVAILABLE_KHR :: 0x3219
STREAM_STATE_DISCONNECTED_KHR        :: 0x321A
BAD_STREAM_KHR                       :: 0x321B
BAD_STATE_KHR                        :: 0x321C

PFNEGLCREATESTREAMKHRPROC   :: proc "c" (dpy: Display, attrib_list: ^i32) -> StreamKHR
PFNEGLDESTROYSTREAMKHRPROC  :: proc "c" (dpy: Display, stream: StreamKHR) -> b32
PFNEGLSTREAMATTRIBKHRPROC   :: proc "c" (dpy: Display, stream: StreamKHR, attribute: Enum, value: i32) -> b32
PFNEGLQUERYSTREAMKHRPROC    :: proc "c" (dpy: Display, stream: StreamKHR, attribute: Enum, value: ^i32) -> b32
PFNEGLQUERYSTREAMU64KHRPROC :: proc "c" (dpy: Display, stream: StreamKHR, attribute: Enum, value: ^u64) -> b32

KHR_stream_attrib :: 1

PFNEGLCREATESTREAMATTRIBKHRPROC          :: proc "c" (dpy: Display, attrib_list: ^Attrib) -> StreamKHR
PFNEGLSETSTREAMATTRIBKHRPROC             :: proc "c" (dpy: Display, stream: StreamKHR, attribute: Enum, value: Attrib) -> b32
PFNEGLQUERYSTREAMATTRIBKHRPROC           :: proc "c" (dpy: Display, stream: StreamKHR, attribute: Enum, value: ^Attrib) -> b32
PFNEGLSTREAMCONSUMERACQUIREATTRIBKHRPROC :: proc "c" (dpy: Display, stream: StreamKHR, attrib_list: ^Attrib) -> b32
PFNEGLSTREAMCONSUMERRELEASEATTRIBKHRPROC :: proc "c" (dpy: Display, stream: StreamKHR, attrib_list: ^Attrib) -> b32

KHR_stream_consumer_gltexture     :: 1
CONSUMER_ACQUIRE_TIMEOUT_USEC_KHR :: 0x321E

PFNEGLSTREAMCONSUMERGLTEXTUREEXTERNALKHRPROC :: proc "c" (dpy: Display, stream: StreamKHR) -> b32
PFNEGLSTREAMCONSUMERACQUIREKHRPROC           :: proc "c" (dpy: Display, stream: StreamKHR) -> b32
PFNEGLSTREAMCONSUMERRELEASEKHRPROC           :: proc "c" (dpy: Display, stream: StreamKHR) -> b32

KHR_stream_cross_process_fd :: 1

NativeFileDescriptorKHR                     :: distinct i32
PFNEGLGETSTREAMFILEDESCRIPTORKHRPROC        :: proc "c" (dpy: Display, stream: StreamKHR) -> NativeFileDescriptorKHR
PFNEGLCREATESTREAMFROMFILEDESCRIPTORKHRPROC :: proc "c" (dpy: Display, file_descriptor: NativeFileDescriptorKHR) -> StreamKHR

KHR_stream_fifo          :: 1
STREAM_FIFO_LENGTH_KHR        :: 0x31FC
STREAM_TIME_NOW_KHR           :: 0x31FD
STREAM_TIME_CONSUMER_KHR      :: 0x31FE
STREAM_TIME_PRODUCER_KHR      :: 0x31FF

PFNEGLQUERYSTREAMTIMEKHRPROC :: proc "c" (dpy: Display, stream: StreamKHR, attribute: Enum, value: ^time.Time) -> b32

KHR_stream_producer_aldatalocator :: 1
KHR_stream_producer_eglsurface    :: 1
STREAM_BIT_KHR                    :: 0x0800

PFNEGLCREATESTREAMPRODUCERSURFACEKHRPROC :: proc "c" (dpy: Display, config: Config, stream: StreamKHR, attrib_list: ^i32) -> Surface

KHR_surfaceless_context      :: 1
KHR_swap_buffers_with_damage :: 1

PFNEGLSWAPBUFFERSWITHDAMAGEKHRPROC :: proc "c" (dpy: Display, surface: Surface, rects: ^i32, n_rects: i32) -> b32

KHR_vg_parent_image :: 1
VG_PARENT_IMAGE_KHR           :: 0x30BA
KHR_wait_sync       :: 1

PFNEGLWAITSYNCKHRPROC :: proc "c" (dpy: Display, sync: SyncKHR, flags: i32) -> i32

ANDROID_GLES_layers :: 1
ANDROID_blob_cache  :: 1

SetBlobFuncANDROID                 :: proc "c" (key: rawptr, keySize: uintptr, value: rawptr, valueSize: uintptr)
GetBlobFuncANDROID                 :: proc "c" (key: rawptr, keySize: uintptr, value: rawptr, valueSize: uintptr) -> uintptr
PFNEGLSETBLOBCACHEFUNCSANDROIDPROC :: proc "c" (dpy: Display, set: SetBlobFuncANDROID, get: GetBlobFuncANDROID)

ANDROID_create_native_client_buffer          :: 1
NATIVE_BUFFER_USAGE_ANDROID                  :: 0x3143
NATIVE_BUFFER_USAGE_PROTECTED_BIT_ANDROID    :: 0x00000001
NATIVE_BUFFER_USAGE_RENDERBUFFER_BIT_ANDROID :: 0x00000002
NATIVE_BUFFER_USAGE_TEXTURE_BIT_ANDROID      :: 0x00000004

PFNEGLCREATENATIVECLIENTBUFFERANDROIDPROC :: proc "c" (attrib_list: ^i32) -> ClientBuffer

ANDROID_framebuffer_target                  :: 1
FRAMEBUFFER_TARGET_ANDROID                  :: 0x3147
ANDROID_front_buffer_auto_refresh           :: 1
FRONT_BUFFER_AUTO_REFRESH_ANDROID           :: 0x314C
ANDROID_get_frame_timestamps                :: 1
TIMESTAMPS_ANDROID                          :: 0x3430
COMPOSITE_DEADLINE_ANDROID                  :: 0x3431
COMPOSITE_INTERVAL_ANDROID                  :: 0x3432
COMPOSITE_TO_PRESENT_LATENCY_ANDROID        :: 0x3433
REQUESTED_PRESENT_TIME_ANDROID              :: 0x3434
RENDERING_COMPLETE_TIME_ANDROID             :: 0x3435
COMPOSITION_LATCH_TIME_ANDROID              :: 0x3436
FIRST_COMPOSITION_START_TIME_ANDROID        :: 0x3437
LAST_COMPOSITION_START_TIME_ANDROID         :: 0x3438
FIRST_COMPOSITION_GPU_FINISHED_TIME_ANDROID :: 0x3439
DISPLAY_PRESENT_TIME_ANDROID                :: 0x343A
DEQUEUE_READY_TIME_ANDROID                  :: 0x343B
READS_DONE_TIME_ANDROID                     :: 0x343C

PFNEGLGETCOMPOSITORTIMINGSUPPORTEDANDROIDPROC :: proc "c" (dpy: Display, surface: Surface, name: i32) -> b32
PFNEGLGETCOMPOSITORTIMINGANDROIDPROC          :: proc "c" (dpy: Display, surface: Surface, numTimestamps: i32, names: ^i32, values: ^i64) -> b32
PFNEGLGETNEXTFRAMEIDANDROIDPROC               :: proc "c" (dpy: Display, surface: Surface, frameId: ^u64) -> b32
PFNEGLGETFRAMETIMESTAMPSUPPORTEDANDROIDPROC   :: proc "c" (dpy: Display, surface: Surface, timestamp: i32) -> b32
PFNEGLGETFRAMETIMESTAMPSANDROIDPROC           :: proc "c" (dpy: Display, surface: Surface, frameId: u64, numTimestamps: i32, timestamps: ^i32, values: ^i64) -> b32

ANDROID_get_native_client_buffer :: 1

AHardwareBuffer                        :: struct {}
PFNEGLGETNATIVECLIENTBUFFERANDROIDPROC :: proc "c" (buffer: ^AHardwareBuffer) -> ClientBuffer

ANDROID_image_native_buffer        :: 1
NATIVE_BUFFER_ANDROID              :: 0x3140
ANDROID_native_fence_sync          :: 1
SYNC_NATIVE_FENCE_ANDROID          :: 0x3144
SYNC_NATIVE_FENCE_FD_ANDROID       :: 0x3145
SYNC_NATIVE_FENCE_SIGNALED_ANDROID :: 0x3146
NO_NATIVE_FENCE_FD_ANDROID         :: -1

PFNEGLDUPNATIVEFENCEFDANDROIDPROC :: proc "c" (dpy: Display, sync: SyncKHR) -> i32

ANDROID_presentation_time :: 1

PFNEGLPRESENTATIONTIMEANDROIDPROC :: proc "c" (dpy: Display, surface: Surface, time: i64) -> b32

ANDROID_recordable                   :: 1
RECORDABLE_ANDROID                   :: 0x3142
ANDROID_telemetry_hint               :: 1
TELEMETRY_HINT_ANDROID               :: 0x3570
ANGLE_d3d_share_handle_client_buffer :: 1
D3D_TEXTURE_2D_SHARE_HANDLE_ANGLE    :: 0x3200
ANGLE_device_d3d                     :: 1
D3D9_DEVICE_ANGLE                    :: 0x33A0
D3D11_DEVICE_ANGLE                   :: 0x33A1
ANGLE_query_surface_pointer          :: 1

PFNEGLQUERYSURFACEPOINTERANGLEPROC :: proc "c" (dpy: Display, surface: Surface, attribute: i32, value: ^rawptr) -> b32

ANGLE_surface_d3d_texture_2d_share_handle :: 1
ANGLE_sync_control_rate                   :: 1

PFNEGLGETMSCRATEANGLEPROC :: proc "c" (dpy: Display, surface: Surface, numerator: ^i32, denominator: ^i32) -> b32

ANGLE_window_fixed_size                   :: 1
FIXED_SIZE_ANGLE                          :: 0x3201
ARM_image_format                          :: 1
COLOR_COMPONENT_TYPE_UNSIGNED_INTEGER_ARM :: 0x3287
COLOR_COMPONENT_TYPE_INTEGER_ARM          :: 0x3288
ARM_implicit_external_sync                :: 1
SYNC_PRIOR_COMMANDS_IMPLICIT_EXTERNAL_ARM :: 0x328A
ARM_pixmap_multisample_discard            :: 1
DISCARD_SAMPLES_ARM                       :: 0x3286
EXT_bind_to_front                         :: 1
FRONT_BUFFER_EXT                          :: 0x3464
EXT_buffer_age                            :: 1
BUFFER_AGE_EXT                            :: 0x313D
EXT_client_extensions                     :: 1
EXT_client_sync                           :: 1
SYNC_CLIENT_EXT                           :: 0x3364
SYNC_CLIENT_SIGNAL_EXT                    :: 0x3365

PFNEGLCLIENTSIGNALSYNCEXTPROC :: proc "c" (dpy: Display, sync: Sync, attrib_list: ^Attrib) -> b32

EXT_compositor                   :: 1
PRIMARY_COMPOSITOR_CONTEXT_EXT   :: 0x3460
EXTERNAL_REF_ID_EXT              :: 0x3461
COMPOSITOR_DROP_NEWEST_FRAME_EXT :: 0x3462
COMPOSITOR_KEEP_NEWEST_FRAME_EXT :: 0x3463

PFNEGLCOMPOSITORSETCONTEXTLISTEXTPROC       :: proc "c" (external_ref_ids: ^i32, num_entries: i32) -> b32
PFNEGLCOMPOSITORSETCONTEXTATTRIBUTESEXTPROC :: proc "c" (external_ref_id: i32, context_attributes: ^i32, num_entries: i32) -> b32
PFNEGLCOMPOSITORSETWINDOWLISTEXTPROC        :: proc "c" (external_ref_id: i32, external_win_ids: ^i32, num_entries: i32) -> b32
PFNEGLCOMPOSITORSETWINDOWATTRIBUTESEXTPROC  :: proc "c" (external_win_id: i32, window_attributes: ^i32, num_entries: i32) -> b32
PFNEGLCOMPOSITORBINDTEXWINDOWEXTPROC        :: proc "c" (external_win_id: i32) -> b32
PFNEGLCOMPOSITORSETSIZEEXTPROC              :: proc "c" (external_win_id: i32, width: i32, height: i32) -> b32
PFNEGLCOMPOSITORSWAPPOLICYEXTPROC           :: proc "c" (external_win_id: i32, policy: i32) -> b32

EXT_config_select_group                        :: 1
CONFIG_SELECT_GROUP_EXT                        :: 0x34C0
EXT_create_context_robustness                  :: 1
CONTEXT_OPENGL_ROBUST_ACCESS_EXT               :: 0x30BF
CONTEXT_OPENGL_RESET_NOTIFICATION_STRATEGY_EXT :: 0x3138
NO_RESET_NOTIFICATION_EXT                      :: 0x31BE
LOSE_CONTEXT_ON_RESET_EXT                      :: 0x31BF
EXT_device_base                                :: 1

DeviceEXT :: distinct rawptr

BAD_DEVICE_EXT                :: 0x322B
DEVICE_EXT                    :: 0x322C

PFNEGLQUERYDEVICEATTRIBEXTPROC  :: proc "c" (device: DeviceEXT, attribute: i32, value: ^Attrib) -> b32
PFNEGLQUERYDEVICESTRINGEXTPROC  :: proc "c" (device: DeviceEXT, name: i32) -> cstring
PFNEGLQUERYDEVICESEXTPROC       :: proc "c" (max_devices: i32, devices: ^DeviceEXT, num_devices: ^i32) -> b32
PFNEGLQUERYDISPLAYATTRIBEXTPROC :: proc "c" (dpy: Display, attribute: i32, value: ^Attrib) -> b32

EXT_device_drm             :: 1
DRM_DEVICE_FILE_EXT           :: 0x3233
DRM_MASTER_FD_EXT             :: 0x333C
EXT_device_drm_render_node :: 1
DRM_RENDER_NODE_FILE_EXT      :: 0x3377
EXT_device_enumeration     :: 1
EXT_device_openwf          :: 1
OPENWF_DEVICE_ID_EXT          :: 0x3237
OPENWF_DEVICE_EXT             :: 0x333D
EXT_device_persistent_id   :: 1
DEVICE_UUID_EXT               :: 0x335C
DRIVER_UUID_EXT               :: 0x335D
DRIVER_NAME_EXT               :: 0x335E

PFNEGLQUERYDEVICEBINARYEXTPROC :: proc "c" (device: DeviceEXT, name: i32, max_size: i32, value: rawptr, size: ^i32) -> b32

EXT_device_query      :: 1
EXT_device_query_name :: 1
RENDERER_EXT                  :: 0x335F
EXT_display_alloc     :: 1
ALLOC_NEW_DISPLAY_EXT         :: 0x3379

PFNEGLDESTROYDISPLAYEXTPROC :: proc "c" (dpy: Display) -> b32

EXT_explicit_device                      :: 1
EXT_gl_colorspace_bt2020_hlg             :: 1
GL_COLORSPACE_BT2020_HLG_EXT             :: 0x3540
EXT_gl_colorspace_bt2020_linear          :: 1
GL_COLORSPACE_BT2020_LINEAR_EXT          :: 0x333F
EXT_gl_colorspace_bt2020_pq              :: 1
GL_COLORSPACE_BT2020_PQ_EXT              :: 0x3340
EXT_gl_colorspace_display_p3             :: 1
GL_COLORSPACE_DISPLAY_P3_EXT             :: 0x3363
EXT_gl_colorspace_display_p3_linear      :: 1
GL_COLORSPACE_DISPLAY_P3_LINEAR_EXT      :: 0x3362
EXT_gl_colorspace_display_p3_passthrough :: 1
GL_COLORSPACE_DISPLAY_P3_PASSTHROUGH_EXT :: 0x3490
EXT_gl_colorspace_scrgb                  :: 1
GL_COLORSPACE_SCRGB_EXT                  :: 0x3351
EXT_gl_colorspace_scrgb_linear           :: 1
GL_COLORSPACE_SCRGB_LINEAR_EXT           :: 0x3350
EXT_image_dma_buf_import                 :: 1
LINUX_DMA_BUF_EXT                        :: 0x3270
LINUX_DRM_FOURCC_EXT                     :: 0x3271
DMA_BUF_PLANE0_FD_EXT                    :: 0x3272
DMA_BUF_PLANE0_OFFSET_EXT                :: 0x3273
DMA_BUF_PLANE0_PITCH_EXT                 :: 0x3274
DMA_BUF_PLANE1_FD_EXT                    :: 0x3275
DMA_BUF_PLANE1_OFFSET_EXT                :: 0x3276
DMA_BUF_PLANE1_PITCH_EXT                 :: 0x3277
DMA_BUF_PLANE2_FD_EXT                    :: 0x3278
DMA_BUF_PLANE2_OFFSET_EXT                :: 0x3279
DMA_BUF_PLANE2_PITCH_EXT                 :: 0x327A
YUV_COLOR_SPACE_HINT_EXT                 :: 0x327B
SAMPLE_RANGE_HINT_EXT                    :: 0x327C
YUV_CHROMA_HORIZONTAL_SITING_HINT_EXT    :: 0x327D
YUV_CHROMA_VERTICAL_SITING_HINT_EXT      :: 0x327E
ITU_REC601_EXT                           :: 0x327F
ITU_REC709_EXT                           :: 0x3280
ITU_REC2020_EXT                          :: 0x3281
YUV_FULL_RANGE_EXT                       :: 0x3282
YUV_NARROW_RANGE_EXT                     :: 0x3283
YUV_CHROMA_SITING_0_EXT                  :: 0x3284
YUV_CHROMA_SITING_0_5_EXT                :: 0x3285
EXT_image_dma_buf_import_modifiers       :: 1
DMA_BUF_PLANE3_FD_EXT                    :: 0x3440
DMA_BUF_PLANE3_OFFSET_EXT                :: 0x3441
DMA_BUF_PLANE3_PITCH_EXT                 :: 0x3442
DMA_BUF_PLANE0_MODIFIER_LO_EXT           :: 0x3443
DMA_BUF_PLANE0_MODIFIER_HI_EXT           :: 0x3444
DMA_BUF_PLANE1_MODIFIER_LO_EXT           :: 0x3445
DMA_BUF_PLANE1_MODIFIER_HI_EXT           :: 0x3446
DMA_BUF_PLANE2_MODIFIER_LO_EXT           :: 0x3447
DMA_BUF_PLANE2_MODIFIER_HI_EXT           :: 0x3448
DMA_BUF_PLANE3_MODIFIER_LO_EXT           :: 0x3449
DMA_BUF_PLANE3_MODIFIER_HI_EXT           :: 0x344A

PFNEGLQUERYDMABUFFORMATSEXTPROC   :: proc "c" (dpy: Display, max_formats: i32, formats: ^i32, num_formats: ^i32) -> b32
PFNEGLQUERYDMABUFMODIFIERSEXTPROC :: proc "c" (dpy: Display, format: i32, max_modifiers: i32, modifiers: ^u64, external_only: ^b32, num_modifiers: ^i32) -> b32

EXT_image_gl_colorspace         :: 1
GL_COLORSPACE_DEFAULT_EXT       :: 0x314D
EXT_image_implicit_sync_control :: 1
IMPORT_SYNC_TYPE_EXT            :: 0x3470
IMPORT_IMPLICIT_SYNC_EXT        :: 0x3471
IMPORT_EXPLICIT_SYNC_EXT        :: 0x3472
EXT_multiview_window            :: 1
MULTIVIEW_VIEW_COUNT_EXT        :: 0x3134
EXT_output_base                 :: 1

OutputLayerEXT :: distinct rawptr
OutputPortEXT  :: distinct rawptr

BAD_OUTPUT_LAYER_EXT          :: 0x322D
BAD_OUTPUT_PORT_EXT           :: 0x322E
SWAP_INTERVAL_EXT             :: 0x322F

PFNEGLGETOUTPUTLAYERSEXTPROC        :: proc "c" (dpy: Display, attrib_list: ^Attrib, layers: ^OutputLayerEXT, max_layers: i32, num_layers: ^i32) -> b32
PFNEGLGETOUTPUTPORTSEXTPROC         :: proc "c" (dpy: Display, attrib_list: ^Attrib, ports: ^OutputPortEXT, max_ports: i32, num_ports: ^i32) -> b32
PFNEGLOUTPUTLAYERATTRIBEXTPROC      :: proc "c" (dpy: Display, layer: OutputLayerEXT, attribute: i32, value: Attrib) -> b32
PFNEGLQUERYOUTPUTLAYERATTRIBEXTPROC :: proc "c" (dpy: Display, layer: OutputLayerEXT, attribute: i32, value: ^Attrib) -> b32
PFNEGLQUERYOUTPUTLAYERSTRINGEXTPROC :: proc "c" (dpy: Display, layer: OutputLayerEXT, name: i32) -> cstring
PFNEGLOUTPUTPORTATTRIBEXTPROC       :: proc "c" (dpy: Display, port: OutputPortEXT, attribute: i32, value: Attrib) -> b32
PFNEGLQUERYOUTPUTPORTATTRIBEXTPROC  :: proc "c" (dpy: Display, port: OutputPortEXT, attribute: i32, value: ^Attrib) -> b32
PFNEGLQUERYOUTPUTPORTSTRINGEXTPROC  :: proc "c" (dpy: Display, port: OutputPortEXT, name: i32) -> cstring

EXT_output_drm                 :: 1
DRM_CRTC_EXT                   :: 0x3234
DRM_PLANE_EXT                  :: 0x3235
DRM_CONNECTOR_EXT              :: 0x3236
EXT_output_openwf              :: 1
OPENWF_PIPELINE_ID_EXT         :: 0x3238
OPENWF_PORT_ID_EXT             :: 0x3239
EXT_pixel_format_float         :: 1
COLOR_COMPONENT_TYPE_EXT       :: 0x3339
COLOR_COMPONENT_TYPE_FIXED_EXT :: 0x333A
COLOR_COMPONENT_TYPE_FLOAT_EXT :: 0x333B
EXT_platform_base              :: 1

PFNEGLGETPLATFORMDISPLAYEXTPROC          :: proc "c" (platform: Enum, native_display: rawptr, attrib_list: ^i32) -> Display
PFNEGLCREATEPLATFORMWINDOWSURFACEEXTPROC :: proc "c" (dpy: Display, config: Config, native_window: rawptr, attrib_list: ^i32) -> Surface
PFNEGLCREATEPLATFORMPIXMAPSURFACEEXTPROC :: proc "c" (dpy: Display, config: Config, native_pixmap: rawptr, attrib_list: ^i32) -> Surface

EXT_platform_device                   :: 1
PLATFORM_DEVICE_EXT                   :: 0x313F
EXT_platform_wayland                  :: 1
PLATFORM_WAYLAND_EXT                  :: 0x31D8
EXT_platform_x11                      :: 1
PLATFORM_X11_EXT                      :: 0x31D5
PLATFORM_X11_SCREEN_EXT               :: 0x31D6
EXT_platform_xcb                      :: 1
PLATFORM_XCB_EXT                      :: 0x31DC
PLATFORM_XCB_SCREEN_EXT               :: 0x31DE
EXT_present_opaque                    :: 1
PRESENT_OPAQUE_EXT                    :: 0x31DF
EXT_protected_content                 :: 1
PROTECTED_CONTENT_EXT                 :: 0x32C0
EXT_protected_surface                 :: 1
EXT_query_reset_notification_strategy :: 1
EXT_stream_consumer_egloutput         :: 1

PFNEGLSTREAMCONSUMEROUTPUTEXTPROC :: proc "c" (dpy: Display, stream: StreamKHR, layer: OutputLayerEXT) -> b32

EXT_surface_CTA861_3_metadata              :: 1
CTA861_3_MAX_CONTENT_LIGHT_LEVEL_EXT       :: 0x3360
CTA861_3_MAX_FRAME_AVERAGE_LEVEL_EXT       :: 0x3361
EXT_surface_SMPTE2086_metadata             :: 1
SMPTE2086_DISPLAY_PRIMARY_RX_EXT           :: 0x3341
SMPTE2086_DISPLAY_PRIMARY_RY_EXT           :: 0x3342
SMPTE2086_DISPLAY_PRIMARY_GX_EXT           :: 0x3343
SMPTE2086_DISPLAY_PRIMARY_GY_EXT           :: 0x3344
SMPTE2086_DISPLAY_PRIMARY_BX_EXT           :: 0x3345
SMPTE2086_DISPLAY_PRIMARY_BY_EXT           :: 0x3346
SMPTE2086_WHITE_POINT_X_EXT                :: 0x3347
SMPTE2086_WHITE_POINT_Y_EXT                :: 0x3348
SMPTE2086_MAX_LUMINANCE_EXT                :: 0x3349
SMPTE2086_MIN_LUMINANCE_EXT                :: 0x334A
METADATA_SCALING_EXT                       :: 50000
EXT_surface_compression                    :: 1
SURFACE_COMPRESSION_EXT                    :: 0x34B0
SURFACE_COMPRESSION_PLANE1_EXT             :: 0x328E
SURFACE_COMPRESSION_PLANE2_EXT             :: 0x328F
SURFACE_COMPRESSION_FIXED_RATE_NONE_EXT    :: 0x34B1
SURFACE_COMPRESSION_FIXED_RATE_DEFAULT_EXT :: 0x34B2
SURFACE_COMPRESSION_FIXED_RATE_1BPC_EXT    :: 0x34B4
SURFACE_COMPRESSION_FIXED_RATE_2BPC_EXT    :: 0x34B5
SURFACE_COMPRESSION_FIXED_RATE_3BPC_EXT    :: 0x34B6
SURFACE_COMPRESSION_FIXED_RATE_4BPC_EXT    :: 0x34B7
SURFACE_COMPRESSION_FIXED_RATE_5BPC_EXT    :: 0x34B8
SURFACE_COMPRESSION_FIXED_RATE_6BPC_EXT    :: 0x34B9
SURFACE_COMPRESSION_FIXED_RATE_7BPC_EXT    :: 0x34BA
SURFACE_COMPRESSION_FIXED_RATE_8BPC_EXT    :: 0x34BB
SURFACE_COMPRESSION_FIXED_RATE_9BPC_EXT    :: 0x34BC
SURFACE_COMPRESSION_FIXED_RATE_10BPC_EXT   :: 0x34BD
SURFACE_COMPRESSION_FIXED_RATE_11BPC_EXT   :: 0x34BE
SURFACE_COMPRESSION_FIXED_RATE_12BPC_EXT   :: 0x34BF

PFNEGLQUERYSUPPORTEDCOMPRESSIONRATESEXTPROC :: proc "c" (dpy: Display, config: Config, attrib_list: ^Attrib, rates: ^i32, rate_size: i32, num_rates: ^i32) -> b32

EXT_swap_buffers_with_damage :: 1

PFNEGLSWAPBUFFERSWITHDAMAGEEXTPROC :: proc "c" (dpy: Display, surface: Surface, rects: ^i32, n_rects: i32) -> b32

EXT_sync_reuse :: 1

PFNEGLUNSIGNALSYNCEXTPROC :: proc "c" (dpy: Display, sync: Sync, attrib_list: ^Attrib) -> b32

EXT_yuv_surface             :: 1
YUV_ORDER_EXT                 :: 0x3301
YUV_NUMBER_OF_PLANES_EXT      :: 0x3311
YUV_SUBSAMPLE_EXT             :: 0x3312
YUV_DEPTH_RANGE_EXT           :: 0x3317
YUV_CSC_STANDARD_EXT          :: 0x330A
YUV_PLANE_BPP_EXT             :: 0x331A
YUV_BUFFER_EXT                :: 0x3300
YUV_ORDER_YUV_EXT             :: 0x3302
YUV_ORDER_YVU_EXT             :: 0x3303
YUV_ORDER_YUYV_EXT            :: 0x3304
YUV_ORDER_UYVY_EXT            :: 0x3305
YUV_ORDER_YVYU_EXT            :: 0x3306
YUV_ORDER_VYUY_EXT            :: 0x3307
YUV_ORDER_AYUV_EXT            :: 0x3308
YUV_SUBSAMPLE_4_2_0_EXT       :: 0x3313
YUV_SUBSAMPLE_4_2_2_EXT       :: 0x3314
YUV_SUBSAMPLE_4_4_4_EXT       :: 0x3315
YUV_DEPTH_RANGE_LIMITED_EXT   :: 0x3318
YUV_DEPTH_RANGE_FULL_EXT      :: 0x3319
YUV_CSC_STANDARD_601_EXT      :: 0x330B
YUV_CSC_STANDARD_709_EXT      :: 0x330C
YUV_CSC_STANDARD_2020_EXT     :: 0x330D
YUV_PLANE_BPP_0_EXT           :: 0x331B
YUV_PLANE_BPP_8_EXT           :: 0x331C
YUV_PLANE_BPP_10_EXT          :: 0x331D
HI_clientpixmap             :: 1

ClientPixmapHI :: struct {
	pData:   rawptr,
	iWidth:  i32,
	iHeight: i32,
	iStride: i32,
}

CLIENT_PIXMAP_POINTER_HI      :: 0x8F74

PFNEGLCREATEPIXMAPSURFACEHIPROC :: proc "c" (dpy: Display, config: Config, pixmap: ^ClientPixmapHI) -> Surface

HI_colorformats                       :: 1
COLOR_FORMAT_HI                       :: 0x8F70
COLOR_RGB_HI                          :: 0x8F71
COLOR_RGBA_HI                         :: 0x8F72
COLOR_ARGB_HI                         :: 0x8F73
IMG_context_priority                  :: 1
CONTEXT_PRIORITY_LEVEL_IMG            :: 0x3100
CONTEXT_PRIORITY_HIGH_IMG             :: 0x3101
CONTEXT_PRIORITY_MEDIUM_IMG           :: 0x3102
CONTEXT_PRIORITY_LOW_IMG              :: 0x3103
IMG_image_plane_attribs               :: 1
NATIVE_BUFFER_MULTIPLANE_SEPARATE_IMG :: 0x3105
NATIVE_BUFFER_PLANE_OFFSET_IMG        :: 0x3106
MESA_drm_image                        :: 1
DRM_BUFFER_FORMAT_MESA                :: 0x31D0
DRM_BUFFER_USE_MESA                   :: 0x31D1
DRM_BUFFER_FORMAT_ARGB32_MESA         :: 0x31D2
DRM_BUFFER_MESA                       :: 0x31D3
DRM_BUFFER_STRIDE_MESA                :: 0x31D4
DRM_BUFFER_USE_SCANOUT_MESA           :: 0x00000001
DRM_BUFFER_USE_SHARE_MESA             :: 0x00000002
DRM_BUFFER_USE_CURSOR_MESA            :: 0x00000004

PFNEGLCREATEDRMIMAGEMESAPROC :: proc "c" (dpy: Display, attrib_list: ^i32) -> ImageKHR
PFNEGLEXPORTDRMIMAGEMESAPROC :: proc "c" (dpy: Display, image: ImageKHR, name: ^i32, handle: ^i32, stride: ^i32) -> b32

MESA_image_dma_buf_export :: 1

PFNEGLEXPORTDMABUFIMAGEQUERYMESAPROC :: proc "c" (dpy: Display, image: ImageKHR, fourcc: ^i32, num_planes: ^i32, modifiers: ^u64) -> b32
PFNEGLEXPORTDMABUFIMAGEMESAPROC      :: proc "c" (dpy: Display, image: ImageKHR, fds: ^i32, strides: ^i32, offsets: ^i32) -> b32

MESA_platform_gbm         :: 1
PLATFORM_GBM_MESA             :: 0x31D7
MESA_platform_surfaceless :: 1
PLATFORM_SURFACELESS_MESA     :: 0x31DD
MESA_query_driver         :: 1

PFNEGLGETDISPLAYDRIVERCONFIGPROC :: proc "c" (dpy: Display) -> cstring
PFNEGLGETDISPLAYDRIVERNAMEPROC   :: proc "c" (dpy: Display) -> cstring

NOK_swap_region :: 1

PFNEGLSWAPBUFFERSREGIONNOKPROC :: proc "c" (dpy: Display, surface: Surface, numRects: i32, rects: ^i32) -> b32

NOK_swap_region2 :: 1

PFNEGLSWAPBUFFERSREGION2NOKPROC :: proc "c" (dpy: Display, surface: Surface, numRects: i32, rects: ^i32) -> b32

NOK_texture_from_pixmap            :: 1
Y_INVERTED_NOK                     :: 0x307F
NV_3dvision_surface                :: 1
AUTO_STEREO_NV                     :: 0x3136
NV_context_priority_realtime       :: 1
CONTEXT_PRIORITY_REALTIME_NV       :: 0x3357
NV_coverage_sample                 :: 1
COVERAGE_BUFFERS_NV                :: 0x30E0
COVERAGE_SAMPLES_NV                :: 0x30E1
NV_coverage_sample_resolve         :: 1
COVERAGE_SAMPLE_RESOLVE_NV         :: 0x3131
COVERAGE_SAMPLE_RESOLVE_DEFAULT_NV :: 0x3132
COVERAGE_SAMPLE_RESOLVE_NONE_NV    :: 0x3133
NV_cuda_event                      :: 1
CUDA_EVENT_HANDLE_NV               :: 0x323B
SYNC_CUDA_EVENT_NV                 :: 0x323C
SYNC_CUDA_EVENT_COMPLETE_NV        :: 0x323D
NV_depth_nonlinear                 :: 1
DEPTH_ENCODING_NV                  :: 0x30E2
DEPTH_ENCODING_NONE_NV             :: 0
DEPTH_ENCODING_NONLINEAR_NV        :: 0x30E3
NV_device_cuda                     :: 1
CUDA_DEVICE_NV                     :: 0x323A
NV_native_query                    :: 1

PFNEGLQUERYNATIVEDISPLAYNVPROC :: proc "c" (dpy: Display, display_id: ^NativeDisplayType) -> b32
PFNEGLQUERYNATIVEWINDOWNVPROC  :: proc "c" (dpy: Display, surf: Surface, window: ^NativeWindowType) -> b32
PFNEGLQUERYNATIVEPIXMAPNVPROC  :: proc "c" (dpy: Display, surf: Surface, pixmap: ^NativePixmapType) -> b32

NV_post_convert_rounding     :: 1
NV_post_sub_buffer           :: 1
POST_SUB_BUFFER_SUPPORTED_NV  :: 0x30BE

PFNEGLPOSTSUBBUFFERNVPROC :: proc "c" (dpy: Display, surface: Surface, x: i32, y: i32, width: i32, height: i32) -> b32

NV_quadruple_buffer                     :: 1
QUADRUPLE_BUFFER_NV                     :: 0x3231
NV_robustness_video_memory_purge        :: 1
GENERATE_RESET_ON_VIDEO_MEMORY_PURGE_NV :: 0x334C
NV_stream_consumer_eglimage             :: 1
STREAM_CONSUMER_IMAGE_NV                :: 0x3373
STREAM_IMAGE_ADD_NV                     :: 0x3374
STREAM_IMAGE_REMOVE_NV                  :: 0x3375
STREAM_IMAGE_AVAILABLE_NV               :: 0x3376

PFNEGLSTREAMIMAGECONSUMERCONNECTNVPROC :: proc "c" (dpy: Display, stream: StreamKHR, num_modifiers: i32, modifiers: ^u64, attrib_list: ^Attrib) -> b32
PFNEGLQUERYSTREAMCONSUMEREVENTNVPROC   :: proc "c" (dpy: Display, stream: StreamKHR, timeout: time.Time, event: ^Enum, aux: ^Attrib) -> i32
PFNEGLSTREAMACQUIREIMAGENVPROC         :: proc "c" (dpy: Display, stream: StreamKHR, pImage: ^Image, sync: Sync) -> b32
PFNEGLSTREAMRELEASEIMAGENVPROC         :: proc "c" (dpy: Display, stream: StreamKHR, image: Image, sync: Sync) -> b32

NV_stream_consumer_eglimage_use_scanout_attrib :: 1
STREAM_CONSUMER_IMAGE_USE_SCANOUT_NV           :: 0x3378
NV_stream_consumer_gltexture_yuv               :: 1
YUV_PLANE0_TEXTURE_UNIT_NV                     :: 0x332C
YUV_PLANE1_TEXTURE_UNIT_NV                     :: 0x332D
YUV_PLANE2_TEXTURE_UNIT_NV                     :: 0x332E

PFNEGLSTREAMCONSUMERGLTEXTUREEXTERNALATTRIBSNVPROC :: proc "c" (dpy: Display, stream: StreamKHR, attrib_list: ^Attrib) -> b32

NV_stream_cross_display    :: 1
STREAM_CROSS_DISPLAY_NV       :: 0x334E
NV_stream_cross_object     :: 1
STREAM_CROSS_OBJECT_NV        :: 0x334D
NV_stream_cross_partition  :: 1
STREAM_CROSS_PARTITION_NV     :: 0x323F
NV_stream_cross_process    :: 1
STREAM_CROSS_PROCESS_NV       :: 0x3245
NV_stream_cross_system     :: 1
STREAM_CROSS_SYSTEM_NV        :: 0x334F
NV_stream_dma              :: 1
STREAM_DMA_NV                 :: 0x3371
STREAM_DMA_SERVER_NV          :: 0x3372
NV_stream_fifo_next        :: 1
PENDING_FRAME_NV              :: 0x3329
STREAM_TIME_PENDING_NV        :: 0x332A
NV_stream_fifo_synchronous :: 1
STREAM_FIFO_SYNCHRONOUS_NV    :: 0x3336
NV_stream_flush            :: 1

PFNEGLSTREAMFLUSHNVPROC :: proc "c" (dpy: Display, stream: StreamKHR) -> b32

NV_stream_frame_limits            :: 1
PRODUCER_MAX_FRAME_HINT_NV        :: 0x3337
CONSUMER_MAX_FRAME_HINT_NV        :: 0x3338
NV_stream_metadata                :: 1
MAX_STREAM_METADATA_BLOCKS_NV     :: 0x3250
MAX_STREAM_METADATA_BLOCK_SIZE_NV :: 0x3251
MAX_STREAM_METADATA_TOTAL_SIZE_NV :: 0x3252
PRODUCER_METADATA_NV              :: 0x3253
CONSUMER_METADATA_NV              :: 0x3254
PENDING_METADATA_NV               :: 0x3328
METADATA0_SIZE_NV                 :: 0x3255
METADATA1_SIZE_NV                 :: 0x3256
METADATA2_SIZE_NV                 :: 0x3257
METADATA3_SIZE_NV                 :: 0x3258
METADATA0_TYPE_NV                 :: 0x3259
METADATA1_TYPE_NV                 :: 0x325A
METADATA2_TYPE_NV                 :: 0x325B
METADATA3_TYPE_NV                 :: 0x325C

PFNEGLQUERYDISPLAYATTRIBNVPROC  :: proc "c" (dpy: Display, attribute: i32, value: ^Attrib) -> b32
PFNEGLSETSTREAMMETADATANVPROC   :: proc "c" (dpy: Display, stream: StreamKHR, n: i32, offset: i32, size: i32, data: rawptr) -> b32
PFNEGLQUERYSTREAMMETADATANVPROC :: proc "c" (dpy: Display, stream: StreamKHR, name: Enum, n: i32, offset: i32, size: i32, data: rawptr) -> b32

NV_stream_origin             :: 1
STREAM_FRAME_ORIGIN_X_NV      :: 0x3366
STREAM_FRAME_ORIGIN_Y_NV      :: 0x3367
STREAM_FRAME_MAJOR_AXIS_NV    :: 0x3368
CONSUMER_AUTO_ORIENTATION_NV  :: 0x3369
PRODUCER_AUTO_ORIENTATION_NV  :: 0x336A
LEFT_NV                       :: 0x336B
RIGHT_NV                      :: 0x336C
TOP_NV                        :: 0x336D
BOTTOM_NV                     :: 0x336E
X_AXIS_NV                     :: 0x336F
Y_AXIS_NV                     :: 0x3370
NV_stream_remote             :: 1
STREAM_STATE_INITIALIZING_NV  :: 0x3240
STREAM_TYPE_NV                :: 0x3241
STREAM_PROTOCOL_NV            :: 0x3242
STREAM_ENDPOINT_NV            :: 0x3243
STREAM_LOCAL_NV               :: 0x3244
STREAM_PRODUCER_NV            :: 0x3247
STREAM_CONSUMER_NV            :: 0x3248
STREAM_PROTOCOL_FD_NV         :: 0x3246
NV_stream_reset              :: 1
SUPPORT_RESET_NV              :: 0x3334
SUPPORT_REUSE_NV              :: 0x3335

PFNEGLRESETSTREAMNVPROC :: proc "c" (dpy: Display, stream: StreamKHR) -> b32

NV_stream_socket          :: 1
STREAM_PROTOCOL_SOCKET_NV     :: 0x324B
SOCKET_HANDLE_NV              :: 0x324C
SOCKET_TYPE_NV                :: 0x324D
NV_stream_socket_inet     :: 1
SOCKET_TYPE_INET_NV           :: 0x324F
NV_stream_socket_unix     :: 1
SOCKET_TYPE_UNIX_NV           :: 0x324E
NV_stream_sync            :: 1
SYNC_NEW_FRAME_NV             :: 0x321F

PFNEGLCREATESTREAMSYNCNVPROC :: proc "c" (dpy: Display, stream: StreamKHR, type: Enum, attrib_list: ^i32) -> SyncKHR

NV_sync :: 1

SyncNV :: distinct rawptr

SYNC_PRIOR_COMMANDS_COMPLETE_NV :: 0x30E6
SYNC_STATUS_NV                  :: 0x30E7
SIGNALED_NV                     :: 0x30E8
UNSIGNALED_NV                   :: 0x30E9
SYNC_FLUSH_COMMANDS_BIT_NV      :: 0x0001
FOREVER_NV                      :: 0xFFFFFFFFFFFFFFFF
ALREADY_SIGNALED_NV             :: 0x30EA
TIMEOUT_EXPIRED_NV              :: 0x30EB
CONDITION_SATISFIED_NV          :: 0x30EC
SYNC_TYPE_NV                    :: 0x30ED
SYNC_CONDITION_NV               :: 0x30EE
SYNC_FENCE_NV                   :: 0x30EF

PFNEGLCREATEFENCESYNCNVPROC :: proc "c" (dpy: Display, condition: Enum, attrib_list: ^i32) -> SyncNV
PFNEGLDESTROYSYNCNVPROC     :: proc "c" (sync: SyncNV) -> b32
PFNEGLFENCENVPROC           :: proc "c" (sync: SyncNV) -> b32
PFNEGLCLIENTWAITSYNCNVPROC  :: proc "c" (sync: SyncNV, flags: i32, timeout: time.Time) -> i32
PFNEGLSIGNALSYNCNVPROC      :: proc "c" (sync: SyncNV, mode: Enum) -> b32
PFNEGLGETSYNCATTRIBNVPROC   :: proc "c" (sync: SyncNV, attribute: i32, value: ^i32) -> b32

NV_system_time :: 1

PFNEGLGETSYSTEMTIMEFREQUENCYNVPROC :: proc "c" () -> u64
PFNEGLGETSYSTEMTIMENVPROC          :: proc "c" () -> u64

NV_triple_buffer           :: 1
TRIPLE_BUFFER_NV              :: 0x3230
QNX_image_native_buffer    :: 1
NATIVE_BUFFER_QNX             :: 0x3551
QNX_platform_screen        :: 1
PLATFORM_SCREEN_QNX           :: 0x3550
TIZEN_image_native_buffer  :: 1
NATIVE_BUFFER_TIZEN           :: 0x32A0
TIZEN_image_native_surface :: 1
NATIVE_SURFACE_TIZEN          :: 0x32A1
WL_bind_wayland_display    :: 1

wl_display  :: struct {}
wl_resource :: struct {}

WAYLAND_BUFFER_WL             :: 0x31D5
WAYLAND_PLANE_WL              :: 0x31D6
TEXTURE_Y_U_V_WL              :: 0x31D7
TEXTURE_Y_UV_WL               :: 0x31D8
TEXTURE_Y_XUXV_WL             :: 0x31D9
TEXTURE_EXTERNAL_WL           :: 0x31DA
WAYLAND_Y_INVERTED_WL         :: 0x31DB

PFNEGLBINDWAYLANDDISPLAYWLPROC   :: proc "c" (dpy: Display, display: ^wl_display) -> b32
PFNEGLUNBINDWAYLANDDISPLAYWLPROC :: proc "c" (dpy: Display, display: ^wl_display) -> b32
PFNEGLQUERYWAYLANDBUFFERWLPROC   :: proc "c" (dpy: Display, buffer: ^wl_resource, attribute: i32, value: ^i32) -> b32

WL_create_wayland_buffer_from_image :: 1

wl_buffer                                :: struct {}
PFNEGLCREATEWAYLANDBUFFERFROMIMAGEWLPROC :: proc "c" (dpy: Display, image: ImageKHR) -> ^wl_buffer

@(default_calling_convention="c", link_prefix="egl")
foreign lib {
	CreateSync64KHR                          :: proc(dpy: Display, type: Enum, attrib_list: ^AttribKHR) -> SyncKHR ---
	DebugMessageControlKHR                   :: proc(callback: DEBUGPROCKHR, attrib_list: ^Attrib) -> i32 ---
	QueryDebugKHR                            :: proc(attribute: i32, value: ^Attrib) -> b32 ---
	LabelObjectKHR                           :: proc(display: Display, objectType: Enum, object: ObjectKHR, label: LabelKHR) -> i32 ---
	QueryDisplayAttribKHR                    :: proc(dpy: Display, name: i32, value: ^Attrib) -> b32 ---
	CreateSyncKHR                            :: proc(dpy: Display, type: Enum, attrib_list: ^i32) -> SyncKHR ---
	DestroySyncKHR                           :: proc(dpy: Display, sync: SyncKHR) -> b32 ---
	ClientWaitSyncKHR                        :: proc(dpy: Display, sync: SyncKHR, flags: i32, timeout: time.Time) -> i32 ---
	GetSyncAttribKHR                         :: proc(dpy: Display, sync: SyncKHR, attribute: i32, value: ^i32) -> b32 ---
	CreateImageKHR                           :: proc(dpy: Display, ctx: Context, target: Enum, buffer: ClientBuffer, attrib_list: ^i32) -> ImageKHR ---
	DestroyImageKHR                          :: proc(dpy: Display, image: ImageKHR) -> b32 ---
	LockSurfaceKHR                           :: proc(dpy: Display, surface: Surface, attrib_list: ^i32) -> b32 ---
	UnlockSurfaceKHR                         :: proc(dpy: Display, surface: Surface) -> b32 ---
	QuerySurface64KHR                        :: proc(dpy: Display, surface: Surface, attribute: i32, value: ^AttribKHR) -> b32 ---
	SetDamageRegionKHR                       :: proc(dpy: Display, surface: Surface, rects: ^i32, n_rects: i32) -> b32 ---
	SignalSyncKHR                            :: proc(dpy: Display, sync: SyncKHR, mode: Enum) -> b32 ---
	CreateStreamKHR                          :: proc(dpy: Display, attrib_list: ^i32) -> StreamKHR ---
	DestroyStreamKHR                         :: proc(dpy: Display, stream: StreamKHR) -> b32 ---
	StreamAttribKHR                          :: proc(dpy: Display, stream: StreamKHR, attribute: Enum, value: i32) -> b32 ---
	QueryStreamKHR                           :: proc(dpy: Display, stream: StreamKHR, attribute: Enum, value: ^i32) -> b32 ---
	QueryStreamu64KHR                        :: proc(dpy: Display, stream: StreamKHR, attribute: Enum, value: ^u64) -> b32 ---
	CreateStreamAttribKHR                    :: proc(dpy: Display, attrib_list: ^Attrib) -> StreamKHR ---
	SetStreamAttribKHR                       :: proc(dpy: Display, stream: StreamKHR, attribute: Enum, value: Attrib) -> b32 ---
	QueryStreamAttribKHR                     :: proc(dpy: Display, stream: StreamKHR, attribute: Enum, value: ^Attrib) -> b32 ---
	StreamConsumerAcquireAttribKHR           :: proc(dpy: Display, stream: StreamKHR, attrib_list: ^Attrib) -> b32 ---
	StreamConsumerReleaseAttribKHR           :: proc(dpy: Display, stream: StreamKHR, attrib_list: ^Attrib) -> b32 ---
	StreamConsumerGLTextureExternalKHR       :: proc(dpy: Display, stream: StreamKHR) -> b32 ---
	StreamConsumerAcquireKHR                 :: proc(dpy: Display, stream: StreamKHR) -> b32 ---
	StreamConsumerReleaseKHR                 :: proc(dpy: Display, stream: StreamKHR) -> b32 ---
	GetStreamFileDescriptorKHR               :: proc(dpy: Display, stream: StreamKHR) -> NativeFileDescriptorKHR ---
	CreateStreamFromFileDescriptorKHR        :: proc(dpy: Display, file_descriptor: NativeFileDescriptorKHR) -> StreamKHR ---
	QueryStreamTimeKHR                       :: proc(dpy: Display, stream: StreamKHR, attribute: Enum, value: ^time.Time) -> b32 ---
	CreateStreamProducerSurfaceKHR           :: proc(dpy: Display, config: Config, stream: StreamKHR, attrib_list: ^i32) -> Surface ---
	SwapBuffersWithDamageKHR                 :: proc(dpy: Display, surface: Surface, rects: ^i32, n_rects: i32) -> b32 ---
	WaitSyncKHR                              :: proc(dpy: Display, sync: SyncKHR, flags: i32) -> i32 ---
	SetBlobCacheFuncsANDROID                 :: proc(dpy: Display, set: SetBlobFuncANDROID, get: GetBlobFuncANDROID) ---
	CreateNativeClientBufferANDROID          :: proc(attrib_list: ^i32) -> ClientBuffer ---
	GetCompositorTimingSupportedANDROID      :: proc(dpy: Display, surface: Surface, name: i32) -> b32 ---
	GetCompositorTimingANDROID               :: proc(dpy: Display, surface: Surface, numTimestamps: i32, names: ^i32, values: ^i64) -> b32 ---
	GetNextFrameIdANDROID                    :: proc(dpy: Display, surface: Surface, frameId: ^u64) -> b32 ---
	GetFrameTimestampSupportedANDROID        :: proc(dpy: Display, surface: Surface, timestamp: i32) -> b32 ---
	GetFrameTimestampsANDROID                :: proc(dpy: Display, surface: Surface, frameId: u64, numTimestamps: i32, timestamps: ^i32, values: ^i64) -> b32 ---
	GetNativeClientBufferANDROID             :: proc(buffer: ^AHardwareBuffer) -> ClientBuffer ---
	DupNativeFenceFDANDROID                  :: proc(dpy: Display, sync: SyncKHR) -> i32 ---
	PresentationTimeANDROID                  :: proc(dpy: Display, surface: Surface, time: i64) -> b32 ---
	QuerySurfacePointerANGLE                 :: proc(dpy: Display, surface: Surface, attribute: i32, value: ^rawptr) -> b32 ---
	GetMscRateANGLE                          :: proc(dpy: Display, surface: Surface, numerator: ^i32, denominator: ^i32) -> b32 ---
	ClientSignalSyncEXT                      :: proc(dpy: Display, sync: Sync, attrib_list: ^Attrib) -> b32 ---
	CompositorSetContextListEXT              :: proc(external_ref_ids: ^i32, num_entries: i32) -> b32 ---
	CompositorSetContextAttributesEXT        :: proc(external_ref_id: i32, context_attributes: ^i32, num_entries: i32) -> b32 ---
	CompositorSetWindowListEXT               :: proc(external_ref_id: i32, external_win_ids: ^i32, num_entries: i32) -> b32 ---
	CompositorSetWindowAttributesEXT         :: proc(external_win_id: i32, window_attributes: ^i32, num_entries: i32) -> b32 ---
	CompositorBindTexWindowEXT               :: proc(external_win_id: i32) -> b32 ---
	CompositorSetSizeEXT                     :: proc(external_win_id: i32, width: i32, height: i32) -> b32 ---
	CompositorSwapPolicyEXT                  :: proc(external_win_id: i32, policy: i32) -> b32 ---
	QueryDeviceAttribEXT                     :: proc(device: DeviceEXT, attribute: i32, value: ^Attrib) -> b32 ---
	QueryDeviceStringEXT                     :: proc(device: DeviceEXT, name: i32) -> cstring ---
	QueryDevicesEXT                          :: proc(max_devices: i32, devices: ^DeviceEXT, num_devices: ^i32) -> b32 ---
	QueryDisplayAttribEXT                    :: proc(dpy: Display, attribute: i32, value: ^Attrib) -> b32 ---
	QueryDeviceBinaryEXT                     :: proc(device: DeviceEXT, name: i32, max_size: i32, value: rawptr, size: ^i32) -> b32 ---
	DestroyDisplayEXT                        :: proc(dpy: Display) -> b32 ---
	QueryDmaBufFormatsEXT                    :: proc(dpy: Display, max_formats: i32, formats: ^i32, num_formats: ^i32) -> b32 ---
	QueryDmaBufModifiersEXT                  :: proc(dpy: Display, format: i32, max_modifiers: i32, modifiers: ^u64, external_only: ^b32, num_modifiers: ^i32) -> b32 ---
	GetOutputLayersEXT                       :: proc(dpy: Display, attrib_list: ^Attrib, layers: ^OutputLayerEXT, max_layers: i32, num_layers: ^i32) -> b32 ---
	GetOutputPortsEXT                        :: proc(dpy: Display, attrib_list: ^Attrib, ports: ^OutputPortEXT, max_ports: i32, num_ports: ^i32) -> b32 ---
	OutputLayerAttribEXT                     :: proc(dpy: Display, layer: OutputLayerEXT, attribute: i32, value: Attrib) -> b32 ---
	QueryOutputLayerAttribEXT                :: proc(dpy: Display, layer: OutputLayerEXT, attribute: i32, value: ^Attrib) -> b32 ---
	QueryOutputLayerStringEXT                :: proc(dpy: Display, layer: OutputLayerEXT, name: i32) -> cstring ---
	OutputPortAttribEXT                      :: proc(dpy: Display, port: OutputPortEXT, attribute: i32, value: Attrib) -> b32 ---
	QueryOutputPortAttribEXT                 :: proc(dpy: Display, port: OutputPortEXT, attribute: i32, value: ^Attrib) -> b32 ---
	QueryOutputPortStringEXT                 :: proc(dpy: Display, port: OutputPortEXT, name: i32) -> cstring ---
	GetPlatformDisplayEXT                    :: proc(platform: Enum, native_display: rawptr, attrib_list: ^i32) -> Display ---
	CreatePlatformWindowSurfaceEXT           :: proc(dpy: Display, config: Config, native_window: rawptr, attrib_list: ^i32) -> Surface ---
	CreatePlatformPixmapSurfaceEXT           :: proc(dpy: Display, config: Config, native_pixmap: rawptr, attrib_list: ^i32) -> Surface ---
	StreamConsumerOutputEXT                  :: proc(dpy: Display, stream: StreamKHR, layer: OutputLayerEXT) -> b32 ---
	QuerySupportedCompressionRatesEXT        :: proc(dpy: Display, config: Config, attrib_list: ^Attrib, rates: ^i32, rate_size: i32, num_rates: ^i32) -> b32 ---
	SwapBuffersWithDamageEXT                 :: proc(dpy: Display, surface: Surface, rects: ^i32, n_rects: i32) -> b32 ---
	UnsignalSyncEXT                          :: proc(dpy: Display, sync: Sync, attrib_list: ^Attrib) -> b32 ---
	CreatePixmapSurfaceHI                    :: proc(dpy: Display, config: Config, pixmap: ^ClientPixmapHI) -> Surface ---
	CreateDRMImageMESA                       :: proc(dpy: Display, attrib_list: ^i32) -> ImageKHR ---
	ExportDRMImageMESA                       :: proc(dpy: Display, image: ImageKHR, name: ^i32, handle: ^i32, stride: ^i32) -> b32 ---
	ExportDMABUFImageQueryMESA               :: proc(dpy: Display, image: ImageKHR, fourcc: ^i32, num_planes: ^i32, modifiers: ^u64) -> b32 ---
	ExportDMABUFImageMESA                    :: proc(dpy: Display, image: ImageKHR, fds: ^i32, strides: ^i32, offsets: ^i32) -> b32 ---
	GetDisplayDriverConfig                   :: proc(dpy: Display) -> cstring ---
	GetDisplayDriverName                     :: proc(dpy: Display) -> cstring ---
	SwapBuffersRegionNOK                     :: proc(dpy: Display, surface: Surface, numRects: i32, rects: ^i32) -> b32 ---
	SwapBuffersRegion2NOK                    :: proc(dpy: Display, surface: Surface, numRects: i32, rects: ^i32) -> b32 ---
	QueryNativeDisplayNV                     :: proc(dpy: Display, display_id: ^NativeDisplayType) -> b32 ---
	QueryNativeWindowNV                      :: proc(dpy: Display, surf: Surface, window: ^NativeWindowType) -> b32 ---
	QueryNativePixmapNV                      :: proc(dpy: Display, surf: Surface, pixmap: ^NativePixmapType) -> b32 ---
	PostSubBufferNV                          :: proc(dpy: Display, surface: Surface, x: i32, y: i32, width: i32, height: i32) -> b32 ---
	StreamImageConsumerConnectNV             :: proc(dpy: Display, stream: StreamKHR, num_modifiers: i32, modifiers: ^u64, attrib_list: ^Attrib) -> b32 ---
	QueryStreamConsumerEventNV               :: proc(dpy: Display, stream: StreamKHR, timeout: time.Time, event: ^Enum, aux: ^Attrib) -> i32 ---
	StreamAcquireImageNV                     :: proc(dpy: Display, stream: StreamKHR, pImage: ^Image, sync: Sync) -> b32 ---
	StreamReleaseImageNV                     :: proc(dpy: Display, stream: StreamKHR, image: Image, sync: Sync) -> b32 ---
	StreamConsumerGLTextureExternalAttribsNV :: proc(dpy: Display, stream: StreamKHR, attrib_list: ^Attrib) -> b32 ---
	StreamFlushNV                            :: proc(dpy: Display, stream: StreamKHR) -> b32 ---
	QueryDisplayAttribNV                     :: proc(dpy: Display, attribute: i32, value: ^Attrib) -> b32 ---
	SetStreamMetadataNV                      :: proc(dpy: Display, stream: StreamKHR, n: i32, offset: i32, size: i32, data: rawptr) -> b32 ---
	QueryStreamMetadataNV                    :: proc(dpy: Display, stream: StreamKHR, name: Enum, n: i32, offset: i32, size: i32, data: rawptr) -> b32 ---
	ResetStreamNV                            :: proc(dpy: Display, stream: StreamKHR) -> b32 ---
	CreateStreamSyncNV                       :: proc(dpy: Display, stream: StreamKHR, type: Enum, attrib_list: ^i32) -> SyncKHR ---
	CreateFenceSyncNV                        :: proc(dpy: Display, condition: Enum, attrib_list: ^i32) -> SyncNV ---
	DestroySyncNV                            :: proc(sync: SyncNV) -> b32 ---
	FenceNV                                  :: proc(sync: SyncNV) -> b32 ---
	ClientWaitSyncNV                         :: proc(sync: SyncNV, flags: i32, timeout: time.Time) -> i32 ---
	SignalSyncNV                             :: proc(sync: SyncNV, mode: Enum) -> b32 ---
	GetSyncAttribNV                          :: proc(sync: SyncNV, attribute: i32, value: ^i32) -> b32 ---
	GetSystemTimeFrequencyNV                 :: proc() -> u64 ---
	GetSystemTimeNV                          :: proc() -> u64 ---
	BindWaylandDisplayWL                     :: proc(dpy: Display, display: ^wl_display) -> b32 ---
	UnbindWaylandDisplayWL                   :: proc(dpy: Display, display: ^wl_display) -> b32 ---
	QueryWaylandBufferWL                     :: proc(dpy: Display, buffer: ^wl_resource, attribute: i32, value: ^i32) -> b32 ---
	CreateWaylandBufferFromImageWL           :: proc(dpy: Display, image: ImageKHR) -> ^wl_buffer ---
}

