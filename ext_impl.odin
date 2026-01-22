package egl

import "core:time"

CreateSync64KHR                          :: proc "c" (dpy: Display, type: Enum, attrib_list: ^AttribKHR) -> SyncKHR { return impl_CreateSync64KHR(dpy, type, attrib_list) }
DebugMessageControlKHR                   :: proc "c" (callback: DEBUGPROCKHR, attrib_list: ^Attrib) -> i32 { return impl_DebugMessageControlKHR(callback, attrib_list) }
QueryDebugKHR                            :: proc "c" (attribute: i32, value: ^Attrib) -> b32 { return impl_QueryDebugKHR(attribute, value) }
LabelObjectKHR                           :: proc "c" (display: Display, objectType: Enum, object: ObjectKHR, label: LabelKHR) -> i32 { return impl_LabelObjectKHR(display, objectType, object, label) }
QueryDisplayAttribKHR                    :: proc "c" (dpy: Display, name: i32, value: ^Attrib) -> b32 { return impl_QueryDisplayAttribKHR(dpy, name, value) }
CreateSyncKHR                            :: proc "c" (dpy: Display, type: Enum, attrib_list: ^i32) -> SyncKHR { return impl_CreateSyncKHR(dpy, type, attrib_list) }
DestroySyncKHR                           :: proc "c" (dpy: Display, sync: SyncKHR) -> b32 { return impl_DestroySyncKHR(dpy, sync) }
ClientWaitSyncKHR                        :: proc "c" (dpy: Display, sync: SyncKHR, flags: i32, timeout: time.Time) -> i32 { return impl_ClientWaitSyncKHR(dpy, sync, flags, timeout) }
GetSyncAttribKHR                         :: proc "c" (dpy: Display, sync: SyncKHR, attribute: i32, value: ^i32) -> b32 { return impl_GetSyncAttribKHR(dpy, sync, attribute, value) }
CreateImageKHR                           :: proc "c" (dpy: Display, ctx: Context, target: Enum, buffer: ClientBuffer, attrib_list: ^i32) -> ImageKHR { return impl_CreateImageKHR(dpy, ctx, target, buffer, attrib_list) }
DestroyImageKHR                          :: proc "c" (dpy: Display, image: ImageKHR) -> b32 { return impl_DestroyImageKHR(dpy, image) }
LockSurfaceKHR                           :: proc "c" (dpy: Display, surface: Surface, attrib_list: ^i32) -> b32 { return impl_LockSurfaceKHR(dpy, surface, attrib_list) }
UnlockSurfaceKHR                         :: proc "c" (dpy: Display, surface: Surface) -> b32 { return impl_UnlockSurfaceKHR(dpy, surface) }
QuerySurface64KHR                        :: proc "c" (dpy: Display, surface: Surface, attribute: i32, value: ^AttribKHR) -> b32 { return impl_QuerySurface64KHR(dpy, surface, attribute, value) }
SetDamageRegionKHR                       :: proc "c" (dpy: Display, surface: Surface, rects: ^i32, n_rects: i32) -> b32 { return impl_SetDamageRegionKHR(dpy, surface, rects, n_rects) }
SignalSyncKHR                            :: proc "c" (dpy: Display, sync: SyncKHR, mode: Enum) -> b32 { return impl_SignalSyncKHR(dpy, sync, mode) }
CreateStreamKHR                          :: proc "c" (dpy: Display, attrib_list: ^i32) -> StreamKHR { return impl_CreateStreamKHR(dpy, attrib_list) }
DestroyStreamKHR                         :: proc "c" (dpy: Display, stream: StreamKHR) -> b32 { return impl_DestroyStreamKHR(dpy, stream) }
StreamAttribKHR                          :: proc "c" (dpy: Display, stream: StreamKHR, attribute: Enum, value: i32) -> b32 { return impl_StreamAttribKHR(dpy, stream, attribute, value) }
QueryStreamKHR                           :: proc "c" (dpy: Display, stream: StreamKHR, attribute: Enum, value: ^i32) -> b32 { return impl_QueryStreamKHR(dpy, stream, attribute, value) }
QueryStreamu64KHR                        :: proc "c" (dpy: Display, stream: StreamKHR, attribute: Enum, value: ^u64) -> b32 { return impl_QueryStreamu64KHR(dpy, stream, attribute, value) }
CreateStreamAttribKHR                    :: proc "c" (dpy: Display, attrib_list: ^Attrib) -> StreamKHR { return impl_CreateStreamAttribKHR(dpy, attrib_list) }
SetStreamAttribKHR                       :: proc "c" (dpy: Display, stream: StreamKHR, attribute: Enum, value: Attrib) -> b32 { return impl_SetStreamAttribKHR(dpy, stream, attribute, value) }
QueryStreamAttribKHR                     :: proc "c" (dpy: Display, stream: StreamKHR, attribute: Enum, value: ^Attrib) -> b32 { return impl_QueryStreamAttribKHR(dpy, stream, attribute, value) }
StreamConsumerAcquireAttribKHR           :: proc "c" (dpy: Display, stream: StreamKHR, attrib_list: ^Attrib) -> b32 { return impl_StreamConsumerAcquireAttribKHR(dpy, stream, attrib_list) }
StreamConsumerReleaseAttribKHR           :: proc "c" (dpy: Display, stream: StreamKHR, attrib_list: ^Attrib) -> b32 { return impl_StreamConsumerReleaseAttribKHR(dpy, stream, attrib_list) }
StreamConsumerGLTextureExternalKHR       :: proc "c" (dpy: Display, stream: StreamKHR) -> b32 { return impl_StreamConsumerGLTextureExternalKHR(dpy, stream) }
StreamConsumerAcquireKHR                 :: proc "c" (dpy: Display, stream: StreamKHR) -> b32 { return impl_StreamConsumerAcquireKHR(dpy, stream) }
StreamConsumerReleaseKHR                 :: proc "c" (dpy: Display, stream: StreamKHR) -> b32 { return impl_StreamConsumerReleaseKHR(dpy, stream) }
GetStreamFileDescriptorKHR               :: proc "c" (dpy: Display, stream: StreamKHR) -> NativeFileDescriptorKHR { return impl_GetStreamFileDescriptorKHR(dpy, stream) }
CreateStreamFromFileDescriptorKHR        :: proc "c" (dpy: Display, file_descriptor: NativeFileDescriptorKHR) -> StreamKHR { return impl_CreateStreamFromFileDescriptorKHR(dpy, file_descriptor) }
QueryStreamTimeKHR                       :: proc "c" (dpy: Display, stream: StreamKHR, attribute: Enum, value: ^time.Time) -> b32 { return impl_QueryStreamTimeKHR(dpy, stream, attribute, value) }
CreateStreamProducerSurfaceKHR           :: proc "c" (dpy: Display, config: Config, stream: StreamKHR, attrib_list: ^i32) -> Surface { return impl_CreateStreamProducerSurfaceKHR(dpy, config, stream, attrib_list) }
SwapBuffersWithDamageKHR                 :: proc "c" (dpy: Display, surface: Surface, rects: ^i32, n_rects: i32) -> b32 { return impl_SwapBuffersWithDamageKHR(dpy, surface, rects, n_rects) }
WaitSyncKHR                              :: proc "c" (dpy: Display, sync: SyncKHR, flags: i32) -> i32 { return impl_WaitSyncKHR(dpy, sync, flags) }
SetBlobCacheFuncsANDROID                 :: proc "c" (dpy: Display, set: SetBlobFuncANDROID, get: GetBlobFuncANDROID) { impl_SetBlobCacheFuncsANDROID(dpy, set, get) }
CreateNativeClientBufferANDROID          :: proc "c" (attrib_list: ^i32) -> ClientBuffer { return impl_CreateNativeClientBufferANDROID(attrib_list) }
GetCompositorTimingSupportedANDROID      :: proc "c" (dpy: Display, surface: Surface, name: i32) -> b32 { return impl_GetCompositorTimingSupportedANDROID(dpy, surface, name) }
GetCompositorTimingANDROID               :: proc "c" (dpy: Display, surface: Surface, numTimestamps: i32, names: ^i32, values: ^i64) -> b32 { return impl_GetCompositorTimingANDROID(dpy, surface, numTimestamps, names, values) }
GetNextFrameIdANDROID                    :: proc "c" (dpy: Display, surface: Surface, frameId: ^u64) -> b32 { return impl_GetNextFrameIdANDROID(dpy, surface, frameId) }
GetFrameTimestampSupportedANDROID        :: proc "c" (dpy: Display, surface: Surface, timestamp: i32) -> b32 { return impl_GetFrameTimestampSupportedANDROID(dpy, surface, timestamp) }
GetFrameTimestampsANDROID                :: proc "c" (dpy: Display, surface: Surface, frameId: u64, numTimestamps: i32, timestamps: ^i32, values: ^i64) -> b32 { return impl_GetFrameTimestampsANDROID(dpy, surface, frameId, numTimestamps, timestamps, values) }
GetNativeClientBufferANDROID             :: proc "c" (buffer: ^AHardwareBuffer) -> ClientBuffer { return impl_GetNativeClientBufferANDROID(buffer) }
DupNativeFenceFDANDROID                  :: proc "c" (dpy: Display, sync: SyncKHR) -> i32 { return impl_DupNativeFenceFDANDROID(dpy, sync) }
PresentationTimeANDROID                  :: proc "c" (dpy: Display, surface: Surface, time: i64) -> b32 { return impl_PresentationTimeANDROID(dpy, surface, time) }
QuerySurfacePointerANGLE                 :: proc "c" (dpy: Display, surface: Surface, attribute: i32, value: ^rawptr) -> b32 { return impl_QuerySurfacePointerANGLE(dpy, surface, attribute, value) }
GetMscRateANGLE                          :: proc "c" (dpy: Display, surface: Surface, numerator: ^i32, denominator: ^i32) -> b32 { return impl_GetMscRateANGLE(dpy, surface, numerator, denominator) }
ClientSignalSyncEXT                      :: proc "c" (dpy: Display, sync: Sync, attrib_list: ^Attrib) -> b32 { return impl_ClientSignalSyncEXT(dpy, sync, attrib_list) }
CompositorSetContextListEXT              :: proc "c" (external_ref_ids: ^i32, num_entries: i32) -> b32 { return impl_CompositorSetContextListEXT(external_ref_ids, num_entries) }
CompositorSetContextAttributesEXT        :: proc "c" (external_ref_id: i32, context_attributes: ^i32, num_entries: i32) -> b32 { return impl_CompositorSetContextAttributesEXT(external_ref_id, context_attributes, num_entries) }
CompositorSetWindowListEXT               :: proc "c" (external_ref_id: i32, external_win_ids: ^i32, num_entries: i32) -> b32 { return impl_CompositorSetWindowListEXT(external_ref_id, external_win_ids, num_entries) }
CompositorSetWindowAttributesEXT         :: proc "c" (external_win_id: i32, window_attributes: ^i32, num_entries: i32) -> b32 { return impl_CompositorSetWindowAttributesEXT(external_win_id, window_attributes, num_entries) }
CompositorBindTexWindowEXT               :: proc "c" (external_win_id: i32) -> b32 { return impl_CompositorBindTexWindowEXT(external_win_id) }
CompositorSetSizeEXT                     :: proc "c" (external_win_id: i32, width: i32, height: i32) -> b32 { return impl_CompositorSetSizeEXT(external_win_id, width, height) }
CompositorSwapPolicyEXT                  :: proc "c" (external_win_id: i32, policy: i32) -> b32 { return impl_CompositorSwapPolicyEXT(external_win_id, policy) }
QueryDeviceAttribEXT                     :: proc "c" (device: DeviceEXT, attribute: i32, value: ^Attrib) -> b32 { return impl_QueryDeviceAttribEXT(device, attribute, value) }
QueryDeviceStringEXT                     :: proc "c" (device: DeviceEXT, name: i32) -> cstring { return impl_QueryDeviceStringEXT(device, name) }
QueryDevicesEXT                          :: proc "c" (max_devices: i32, devices: ^DeviceEXT, num_devices: ^i32) -> b32 { return impl_QueryDevicesEXT(max_devices, devices, num_devices) }
QueryDisplayAttribEXT                    :: proc "c" (dpy: Display, attribute: i32, value: ^Attrib) -> b32 { return impl_QueryDisplayAttribEXT(dpy, attribute, value) }
QueryDeviceBinaryEXT                     :: proc "c" (device: DeviceEXT, name: i32, max_size: i32, value: rawptr, size: ^i32) -> b32 { return impl_QueryDeviceBinaryEXT(device, name, max_size, value, size) }
DestroyDisplayEXT                        :: proc "c" (dpy: Display) -> b32 { return impl_DestroyDisplayEXT(dpy) }
QueryDmaBufFormatsEXT                    :: proc "c" (dpy: Display, max_formats: i32, formats: ^i32, num_formats: ^i32) -> b32 { return impl_QueryDmaBufFormatsEXT(dpy, max_formats, formats, num_formats) }
QueryDmaBufModifiersEXT                  :: proc "c" (dpy: Display, format: i32, max_modifiers: i32, modifiers: ^u64, external_only: ^b32, num_modifiers: ^i32) -> b32 { return impl_QueryDmaBufModifiersEXT(dpy, format, max_modifiers, modifiers, external_only, num_modifiers) }
GetOutputLayersEXT                       :: proc "c" (dpy: Display, attrib_list: ^Attrib, layers: ^OutputLayerEXT, max_layers: i32, num_layers: ^i32) -> b32 { return impl_GetOutputLayersEXT(dpy, attrib_list, layers, max_layers, num_layers) }
GetOutputPortsEXT                        :: proc "c" (dpy: Display, attrib_list: ^Attrib, ports: ^OutputPortEXT, max_ports: i32, num_ports: ^i32) -> b32 { return impl_GetOutputPortsEXT(dpy, attrib_list, ports, max_ports, num_ports) }
OutputLayerAttribEXT                     :: proc "c" (dpy: Display, layer: OutputLayerEXT, attribute: i32, value: Attrib) -> b32 { return impl_OutputLayerAttribEXT(dpy, layer, attribute, value) }
QueryOutputLayerAttribEXT                :: proc "c" (dpy: Display, layer: OutputLayerEXT, attribute: i32, value: ^Attrib) -> b32 { return impl_QueryOutputLayerAttribEXT(dpy, layer, attribute, value) }
QueryOutputLayerStringEXT                :: proc "c" (dpy: Display, layer: OutputLayerEXT, name: i32) -> cstring { return impl_QueryOutputLayerStringEXT(dpy, layer, name) }
OutputPortAttribEXT                      :: proc "c" (dpy: Display, port: OutputPortEXT, attribute: i32, value: Attrib) -> b32 { return impl_OutputPortAttribEXT(dpy, port, attribute, value) }
QueryOutputPortAttribEXT                 :: proc "c" (dpy: Display, port: OutputPortEXT, attribute: i32, value: ^Attrib) -> b32 { return impl_QueryOutputPortAttribEXT(dpy, port, attribute, value) }
QueryOutputPortStringEXT                 :: proc "c" (dpy: Display, port: OutputPortEXT, name: i32) -> cstring { return impl_QueryOutputPortStringEXT(dpy, port, name) }
GetPlatformDisplayEXT                    :: proc "c" (platform: Enum, native_display: rawptr, attrib_list: ^i32) -> Display { return impl_GetPlatformDisplayEXT(platform, native_display, attrib_list) }
CreatePlatformWindowSurfaceEXT           :: proc "c" (dpy: Display, config: Config, native_window: rawptr, attrib_list: ^i32) -> Surface { return impl_CreatePlatformWindowSurfaceEXT(dpy, config, native_window, attrib_list) }
CreatePlatformPixmapSurfaceEXT           :: proc "c" (dpy: Display, config: Config, native_pixmap: rawptr, attrib_list: ^i32) -> Surface { return impl_CreatePlatformPixmapSurfaceEXT(dpy, config, native_pixmap, attrib_list) }
StreamConsumerOutputEXT                  :: proc "c" (dpy: Display, stream: StreamKHR, layer: OutputLayerEXT) -> b32 { return impl_StreamConsumerOutputEXT(dpy, stream, layer) }
QuerySupportedCompressionRatesEXT        :: proc "c" (dpy: Display, config: Config, attrib_list: ^Attrib, rates: ^i32, rate_size: i32, num_rates: ^i32) -> b32 { return impl_QuerySupportedCompressionRatesEXT(dpy, config, attrib_list, rates, rate_size, num_rates) }
SwapBuffersWithDamageEXT                 :: proc "c" (dpy: Display, surface: Surface, rects: ^i32, n_rects: i32) -> b32 { return impl_SwapBuffersWithDamageEXT(dpy, surface, rects, n_rects) }
UnsignalSyncEXT                          :: proc "c" (dpy: Display, sync: Sync, attrib_list: ^Attrib) -> b32 { return impl_UnsignalSyncEXT(dpy, sync, attrib_list) }
CreatePixmapSurfaceHI                    :: proc "c" (dpy: Display, config: Config, pixmap: ^ClientPixmapHI) -> Surface { return impl_CreatePixmapSurfaceHI(dpy, config, pixmap) }
CreateDRMImageMESA                       :: proc "c" (dpy: Display, attrib_list: ^i32) -> ImageKHR { return impl_CreateDRMImageMESA(dpy, attrib_list) }
ExportDRMImageMESA                       :: proc "c" (dpy: Display, image: ImageKHR, name: ^i32, handle: ^i32, stride: ^i32) -> b32 { return impl_ExportDRMImageMESA(dpy, image, name, handle, stride) }
ExportDMABUFImageQueryMESA               :: proc "c" (dpy: Display, image: ImageKHR, fourcc: ^i32, num_planes: ^i32, modifiers: ^u64) -> b32 { return impl_ExportDMABUFImageQueryMESA(dpy, image, fourcc, num_planes, modifiers) }
ExportDMABUFImageMESA                    :: proc "c" (dpy: Display, image: ImageKHR, fds: ^i32, strides: ^i32, offsets: ^i32) -> b32 { return impl_ExportDMABUFImageMESA(dpy, image, fds, strides, offsets) }
GetDisplayDriverConfig                   :: proc "c" (dpy: Display) -> cstring { return impl_GetDisplayDriverConfig(dpy) }
GetDisplayDriverName                     :: proc "c" (dpy: Display) -> cstring { return impl_GetDisplayDriverName(dpy) }
SwapBuffersRegionNOK                     :: proc "c" (dpy: Display, surface: Surface, numRects: i32, rects: ^i32) -> b32 { return impl_SwapBuffersRegionNOK(dpy, surface, numRects, rects) }
SwapBuffersRegion2NOK                    :: proc "c" (dpy: Display, surface: Surface, numRects: i32, rects: ^i32) -> b32 { return impl_SwapBuffersRegion2NOK(dpy, surface, numRects, rects) }
QueryNativeDisplayNV                     :: proc "c" (dpy: Display, display_id: ^NativeDisplayType) -> b32 { return impl_QueryNativeDisplayNV(dpy, display_id) }
QueryNativeWindowNV                      :: proc "c" (dpy: Display, surf: Surface, window: ^NativeWindowType) -> b32 { return impl_QueryNativeWindowNV(dpy, surf, window) }
QueryNativePixmapNV                      :: proc "c" (dpy: Display, surf: Surface, pixmap: ^NativePixmapType) -> b32 { return impl_QueryNativePixmapNV(dpy, surf, pixmap) }
PostSubBufferNV                          :: proc "c" (dpy: Display, surface: Surface, x: i32, y: i32, width: i32, height: i32) -> b32 { return impl_PostSubBufferNV(dpy, surface, x, y, width, height) }
StreamImageConsumerConnectNV             :: proc "c" (dpy: Display, stream: StreamKHR, num_modifiers: i32, modifiers: ^u64, attrib_list: ^Attrib) -> b32 { return impl_StreamImageConsumerConnectNV(dpy, stream, num_modifiers, modifiers, attrib_list) }
QueryStreamConsumerEventNV               :: proc "c" (dpy: Display, stream: StreamKHR, timeout: time.Time, event: ^Enum, aux: ^Attrib) -> i32 { return impl_QueryStreamConsumerEventNV(dpy, stream, timeout, event, aux) }
StreamAcquireImageNV                     :: proc "c" (dpy: Display, stream: StreamKHR, pImage: ^Image, sync: Sync) -> b32 { return impl_StreamAcquireImageNV(dpy, stream, pImage, sync) }
StreamReleaseImageNV                     :: proc "c" (dpy: Display, stream: StreamKHR, image: Image, sync: Sync) -> b32 { return impl_StreamReleaseImageNV(dpy, stream, image, sync) }
StreamConsumerGLTextureExternalAttribsNV :: proc "c" (dpy: Display, stream: StreamKHR, attrib_list: ^Attrib) -> b32 { return impl_StreamConsumerGLTextureExternalAttribsNV(dpy, stream, attrib_list) }
StreamFlushNV                            :: proc "c" (dpy: Display, stream: StreamKHR) -> b32 { return impl_StreamFlushNV(dpy, stream) }
QueryDisplayAttribNV                     :: proc "c" (dpy: Display, attribute: i32, value: ^Attrib) -> b32 { return impl_QueryDisplayAttribNV(dpy, attribute, value) }
SetStreamMetadataNV                      :: proc "c" (dpy: Display, stream: StreamKHR, n: i32, offset: i32, size: i32, data: rawptr) -> b32 { return impl_SetStreamMetadataNV(dpy, stream, n, offset, size, data) }
QueryStreamMetadataNV                    :: proc "c" (dpy: Display, stream: StreamKHR, name: Enum, n: i32, offset: i32, size: i32, data: rawptr) -> b32 { return impl_QueryStreamMetadataNV(dpy, stream, name, n, offset, size, data) }
ResetStreamNV                            :: proc "c" (dpy: Display, stream: StreamKHR) -> b32 { return impl_ResetStreamNV(dpy, stream) }
CreateStreamSyncNV                       :: proc "c" (dpy: Display, stream: StreamKHR, type: Enum, attrib_list: ^i32) -> SyncKHR { return impl_CreateStreamSyncNV(dpy, stream, type, attrib_list) }
CreateFenceSyncNV                        :: proc "c" (dpy: Display, condition: Enum, attrib_list: ^i32) -> SyncNV { return impl_CreateFenceSyncNV(dpy, condition, attrib_list) }
DestroySyncNV                            :: proc "c" (sync: SyncNV) -> b32 { return impl_DestroySyncNV(sync) }
FenceNV                                  :: proc "c" (sync: SyncNV) -> b32 { return impl_FenceNV(sync) }
ClientWaitSyncNV                         :: proc "c" (sync: SyncNV, flags: i32, timeout: time.Time) -> i32 { return impl_ClientWaitSyncNV(sync, flags, timeout) }
SignalSyncNV                             :: proc "c" (sync: SyncNV, mode: Enum) -> b32 { return impl_SignalSyncNV(sync, mode) }
GetSyncAttribNV                          :: proc "c" (sync: SyncNV, attribute: i32, value: ^i32) -> b32 { return impl_GetSyncAttribNV(sync, attribute, value) }
GetSystemTimeFrequencyNV                 :: proc "c" () -> u64 { return impl_GetSystemTimeFrequencyNV() }
GetSystemTimeNV                          :: proc "c" () -> u64 { return impl_GetSystemTimeNV() }
BindWaylandDisplayWL                     :: proc "c" (dpy: Display, display: ^wl_display) -> b32 { return impl_BindWaylandDisplayWL(dpy, display) }
UnbindWaylandDisplayWL                   :: proc "c" (dpy: Display, display: ^wl_display) -> b32 { return impl_UnbindWaylandDisplayWL(dpy, display) }
QueryWaylandBufferWL                     :: proc "c" (dpy: Display, buffer: ^wl_resource, attribute: i32, value: ^i32) -> b32 { return impl_QueryWaylandBufferWL(dpy, buffer, attribute, value) }
CreateWaylandBufferFromImageWL           :: proc "c" (dpy: Display, image: ImageKHR) -> ^wl_buffer { return impl_CreateWaylandBufferFromImageWL(dpy, image) }

impl_CreateSync64KHR                          : PFNEGLCREATESYNC64KHRPROC
impl_DebugMessageControlKHR                   : PFNEGLDEBUGMESSAGECONTROLKHRPROC
impl_QueryDebugKHR                            : PFNEGLQUERYDEBUGKHRPROC
impl_LabelObjectKHR                           : PFNEGLLABELOBJECTKHRPROC
impl_QueryDisplayAttribKHR                    : PFNEGLQUERYDISPLAYATTRIBKHRPROC
impl_CreateSyncKHR                            : PFNEGLCREATESYNCKHRPROC
impl_DestroySyncKHR                           : PFNEGLDESTROYSYNCKHRPROC
impl_ClientWaitSyncKHR                        : PFNEGLCLIENTWAITSYNCKHRPROC
impl_GetSyncAttribKHR                         : PFNEGLGETSYNCATTRIBKHRPROC
impl_CreateImageKHR                           : PFNEGLCREATEIMAGEKHRPROC
impl_DestroyImageKHR                          : PFNEGLDESTROYIMAGEKHRPROC
impl_LockSurfaceKHR                           : PFNEGLLOCKSURFACEKHRPROC
impl_UnlockSurfaceKHR                         : PFNEGLUNLOCKSURFACEKHRPROC
impl_QuerySurface64KHR                        : PFNEGLQUERYSURFACE64KHRPROC
impl_SetDamageRegionKHR                       : PFNEGLSETDAMAGEREGIONKHRPROC
impl_SignalSyncKHR                            : PFNEGLSIGNALSYNCKHRPROC
impl_CreateStreamKHR                          : PFNEGLCREATESTREAMKHRPROC
impl_DestroyStreamKHR                         : PFNEGLDESTROYSTREAMKHRPROC
impl_StreamAttribKHR                          : PFNEGLSTREAMATTRIBKHRPROC
impl_QueryStreamKHR                           : PFNEGLQUERYSTREAMKHRPROC
impl_QueryStreamu64KHR                        : PFNEGLQUERYSTREAMU64KHRPROC
impl_CreateStreamAttribKHR                    : PFNEGLCREATESTREAMATTRIBKHRPROC
impl_SetStreamAttribKHR                       : PFNEGLSETSTREAMATTRIBKHRPROC
impl_QueryStreamAttribKHR                     : PFNEGLQUERYSTREAMATTRIBKHRPROC
impl_StreamConsumerAcquireAttribKHR           : PFNEGLSTREAMCONSUMERACQUIREATTRIBKHRPROC
impl_StreamConsumerReleaseAttribKHR           : PFNEGLSTREAMCONSUMERRELEASEATTRIBKHRPROC
impl_StreamConsumerGLTextureExternalKHR       : PFNEGLSTREAMCONSUMERGLTEXTUREEXTERNALKHRPROC
impl_StreamConsumerAcquireKHR                 : PFNEGLSTREAMCONSUMERACQUIREKHRPROC
impl_StreamConsumerReleaseKHR                 : PFNEGLSTREAMCONSUMERRELEASEKHRPROC
impl_GetStreamFileDescriptorKHR               : PFNEGLGETSTREAMFILEDESCRIPTORKHRPROC
impl_CreateStreamFromFileDescriptorKHR        : PFNEGLCREATESTREAMFROMFILEDESCRIPTORKHRPROC
impl_QueryStreamTimeKHR                       : PFNEGLQUERYSTREAMTIMEKHRPROC
impl_CreateStreamProducerSurfaceKHR           : PFNEGLCREATESTREAMPRODUCERSURFACEKHRPROC
impl_SwapBuffersWithDamageKHR                 : PFNEGLSWAPBUFFERSWITHDAMAGEKHRPROC
impl_WaitSyncKHR                              : PFNEGLWAITSYNCKHRPROC
impl_SetBlobCacheFuncsANDROID                 : PFNEGLSETBLOBCACHEFUNCSANDROIDPROC
impl_CreateNativeClientBufferANDROID          : PFNEGLCREATENATIVECLIENTBUFFERANDROIDPROC
impl_GetCompositorTimingSupportedANDROID      : PFNEGLGETCOMPOSITORTIMINGSUPPORTEDANDROIDPROC
impl_GetCompositorTimingANDROID               : PFNEGLGETCOMPOSITORTIMINGANDROIDPROC
impl_GetNextFrameIdANDROID                    : PFNEGLGETNEXTFRAMEIDANDROIDPROC
impl_GetFrameTimestampSupportedANDROID        : PFNEGLGETFRAMETIMESTAMPSUPPORTEDANDROIDPROC
impl_GetFrameTimestampsANDROID                : PFNEGLGETFRAMETIMESTAMPSANDROIDPROC
impl_GetNativeClientBufferANDROID             : PFNEGLGETNATIVECLIENTBUFFERANDROIDPROC
impl_DupNativeFenceFDANDROID                  : PFNEGLDUPNATIVEFENCEFDANDROIDPROC
impl_PresentationTimeANDROID                  : PFNEGLPRESENTATIONTIMEANDROIDPROC
impl_QuerySurfacePointerANGLE                 : PFNEGLQUERYSURFACEPOINTERANGLEPROC
impl_GetMscRateANGLE                          : PFNEGLGETMSCRATEANGLEPROC
impl_ClientSignalSyncEXT                      : PFNEGLCLIENTSIGNALSYNCEXTPROC
impl_CompositorSetContextListEXT              : PFNEGLCOMPOSITORSETCONTEXTLISTEXTPROC
impl_CompositorSetContextAttributesEXT        : PFNEGLCOMPOSITORSETCONTEXTATTRIBUTESEXTPROC
impl_CompositorSetWindowListEXT               : PFNEGLCOMPOSITORSETWINDOWLISTEXTPROC
impl_CompositorSetWindowAttributesEXT         : PFNEGLCOMPOSITORSETWINDOWATTRIBUTESEXTPROC
impl_CompositorBindTexWindowEXT               : PFNEGLCOMPOSITORBINDTEXWINDOWEXTPROC
impl_CompositorSetSizeEXT                     : PFNEGLCOMPOSITORSETSIZEEXTPROC
impl_CompositorSwapPolicyEXT                  : PFNEGLCOMPOSITORSWAPPOLICYEXTPROC
impl_QueryDeviceAttribEXT                     : PFNEGLQUERYDEVICEATTRIBEXTPROC
impl_QueryDeviceStringEXT                     : PFNEGLQUERYDEVICESTRINGEXTPROC
impl_QueryDevicesEXT                          : PFNEGLQUERYDEVICESEXTPROC
impl_QueryDisplayAttribEXT                    : PFNEGLQUERYDISPLAYATTRIBEXTPROC
impl_QueryDeviceBinaryEXT                     : PFNEGLQUERYDEVICEBINARYEXTPROC
impl_DestroyDisplayEXT                        : PFNEGLDESTROYDISPLAYEXTPROC
impl_QueryDmaBufFormatsEXT                    : PFNEGLQUERYDMABUFFORMATSEXTPROC
impl_QueryDmaBufModifiersEXT                  : PFNEGLQUERYDMABUFMODIFIERSEXTPROC
impl_GetOutputLayersEXT                       : PFNEGLGETOUTPUTLAYERSEXTPROC
impl_GetOutputPortsEXT                        : PFNEGLGETOUTPUTPORTSEXTPROC
impl_OutputLayerAttribEXT                     : PFNEGLOUTPUTLAYERATTRIBEXTPROC
impl_QueryOutputLayerAttribEXT                : PFNEGLQUERYOUTPUTLAYERATTRIBEXTPROC
impl_QueryOutputLayerStringEXT                : PFNEGLQUERYOUTPUTLAYERSTRINGEXTPROC
impl_OutputPortAttribEXT                      : PFNEGLOUTPUTPORTATTRIBEXTPROC
impl_QueryOutputPortAttribEXT                 : PFNEGLQUERYOUTPUTPORTATTRIBEXTPROC
impl_QueryOutputPortStringEXT                 : PFNEGLQUERYOUTPUTPORTSTRINGEXTPROC
impl_GetPlatformDisplayEXT                    : PFNEGLGETPLATFORMDISPLAYEXTPROC
impl_CreatePlatformWindowSurfaceEXT           : PFNEGLCREATEPLATFORMWINDOWSURFACEEXTPROC
impl_CreatePlatformPixmapSurfaceEXT           : PFNEGLCREATEPLATFORMPIXMAPSURFACEEXTPROC
impl_StreamConsumerOutputEXT                  : PFNEGLSTREAMCONSUMEROUTPUTEXTPROC
impl_QuerySupportedCompressionRatesEXT        : PFNEGLQUERYSUPPORTEDCOMPRESSIONRATESEXTPROC
impl_SwapBuffersWithDamageEXT                 : PFNEGLSWAPBUFFERSWITHDAMAGEEXTPROC
impl_UnsignalSyncEXT                          : PFNEGLUNSIGNALSYNCEXTPROC
impl_CreatePixmapSurfaceHI                    : PFNEGLCREATEPIXMAPSURFACEHIPROC
impl_CreateDRMImageMESA                       : PFNEGLCREATEDRMIMAGEMESAPROC
impl_ExportDRMImageMESA                       : PFNEGLEXPORTDRMIMAGEMESAPROC
impl_ExportDMABUFImageQueryMESA               : PFNEGLEXPORTDMABUFIMAGEQUERYMESAPROC
impl_ExportDMABUFImageMESA                    : PFNEGLEXPORTDMABUFIMAGEMESAPROC
impl_GetDisplayDriverConfig                   : PFNEGLGETDISPLAYDRIVERCONFIGPROC
impl_GetDisplayDriverName                     : PFNEGLGETDISPLAYDRIVERNAMEPROC
impl_SwapBuffersRegionNOK                     : PFNEGLSWAPBUFFERSREGIONNOKPROC
impl_SwapBuffersRegion2NOK                    : PFNEGLSWAPBUFFERSREGION2NOKPROC
impl_QueryNativeDisplayNV                     : PFNEGLQUERYNATIVEDISPLAYNVPROC
impl_QueryNativeWindowNV                      : PFNEGLQUERYNATIVEWINDOWNVPROC
impl_QueryNativePixmapNV                      : PFNEGLQUERYNATIVEPIXMAPNVPROC
impl_PostSubBufferNV                          : PFNEGLPOSTSUBBUFFERNVPROC
impl_StreamImageConsumerConnectNV             : PFNEGLSTREAMIMAGECONSUMERCONNECTNVPROC
impl_QueryStreamConsumerEventNV               : PFNEGLQUERYSTREAMCONSUMEREVENTNVPROC
impl_StreamAcquireImageNV                     : PFNEGLSTREAMACQUIREIMAGENVPROC
impl_StreamReleaseImageNV                     : PFNEGLSTREAMRELEASEIMAGENVPROC
impl_StreamConsumerGLTextureExternalAttribsNV : PFNEGLSTREAMCONSUMERGLTEXTUREEXTERNALATTRIBSNVPROC
impl_StreamFlushNV                            : PFNEGLSTREAMFLUSHNVPROC
impl_QueryDisplayAttribNV                     : PFNEGLQUERYDISPLAYATTRIBNVPROC
impl_SetStreamMetadataNV                      : PFNEGLSETSTREAMMETADATANVPROC
impl_QueryStreamMetadataNV                    : PFNEGLQUERYSTREAMMETADATANVPROC
impl_ResetStreamNV                            : PFNEGLRESETSTREAMNVPROC
impl_CreateStreamSyncNV                       : PFNEGLCREATESTREAMSYNCNVPROC
impl_CreateFenceSyncNV                        : PFNEGLCREATEFENCESYNCNVPROC
impl_DestroySyncNV                            : PFNEGLDESTROYSYNCNVPROC
impl_FenceNV                                  : PFNEGLFENCENVPROC
impl_ClientWaitSyncNV                         : PFNEGLCLIENTWAITSYNCNVPROC
impl_SignalSyncNV                             : PFNEGLSIGNALSYNCNVPROC
impl_GetSyncAttribNV                          : PFNEGLGETSYNCATTRIBNVPROC
impl_GetSystemTimeFrequencyNV                 : PFNEGLGETSYSTEMTIMEFREQUENCYNVPROC
impl_GetSystemTimeNV                          : PFNEGLGETSYSTEMTIMENVPROC
impl_BindWaylandDisplayWL                     : PFNEGLBINDWAYLANDDISPLAYWLPROC
impl_UnbindWaylandDisplayWL                   : PFNEGLUNBINDWAYLANDDISPLAYWLPROC
impl_QueryWaylandBufferWL                     : PFNEGLQUERYWAYLANDBUFFERWLPROC
impl_CreateWaylandBufferFromImageWL           : PFNEGLCREATEWAYLANDBUFFERFROMIMAGEWLPROC

load_extension_pointers :: proc "contextless" (loader: type_of(GetProcAddress) = GetProcAddress) {
    impl_CreateSync64KHR                          = auto_cast loader("eglCreateSync64KHR")
    impl_DebugMessageControlKHR                   = auto_cast loader("eglDebugMessageControlKHR")
    impl_QueryDebugKHR                            = auto_cast loader("eglQueryDebugKHR")
    impl_LabelObjectKHR                           = auto_cast loader("eglLabelObjectKHR")
    impl_QueryDisplayAttribKHR                    = auto_cast loader("eglQueryDisplayAttribKHR")
    impl_CreateSyncKHR                            = auto_cast loader("eglCreateSyncKHR")
    impl_DestroySyncKHR                           = auto_cast loader("eglDestroySyncKHR")
    impl_ClientWaitSyncKHR                        = auto_cast loader("eglClientWaitSyncKHR")
    impl_GetSyncAttribKHR                         = auto_cast loader("eglGetSyncAttribKHR")
    impl_CreateImageKHR                           = auto_cast loader("eglCreateImageKHR")
    impl_DestroyImageKHR                          = auto_cast loader("eglDestroyImageKHR")
    impl_LockSurfaceKHR                           = auto_cast loader("eglLockSurfaceKHR")
    impl_UnlockSurfaceKHR                         = auto_cast loader("eglUnlockSurfaceKHR")
    impl_QuerySurface64KHR                        = auto_cast loader("eglQuerySurface64KHR")
    impl_SetDamageRegionKHR                       = auto_cast loader("eglSetDamageRegionKHR")
    impl_SignalSyncKHR                            = auto_cast loader("eglSignalSyncKHR")
    impl_CreateStreamKHR                          = auto_cast loader("eglCreateStreamKHR")
    impl_DestroyStreamKHR                         = auto_cast loader("eglDestroyStreamKHR")
    impl_StreamAttribKHR                          = auto_cast loader("eglStreamAttribKHR")
    impl_QueryStreamKHR                           = auto_cast loader("eglQueryStreamKHR")
    impl_QueryStreamu64KHR                        = auto_cast loader("eglQueryStreamu64KHR")
    impl_CreateStreamAttribKHR                    = auto_cast loader("eglCreateStreamAttribKHR")
    impl_SetStreamAttribKHR                       = auto_cast loader("eglSetStreamAttribKHR")
    impl_QueryStreamAttribKHR                     = auto_cast loader("eglQueryStreamAttribKHR")
    impl_StreamConsumerAcquireAttribKHR           = auto_cast loader("eglStreamConsumerAcquireAttribKHR")
    impl_StreamConsumerReleaseAttribKHR           = auto_cast loader("eglStreamConsumerReleaseAttribKHR")
    impl_StreamConsumerGLTextureExternalKHR       = auto_cast loader("eglStreamConsumerGLTextureExternalKHR")
    impl_StreamConsumerAcquireKHR                 = auto_cast loader("eglStreamConsumerAcquireKHR")
    impl_StreamConsumerReleaseKHR                 = auto_cast loader("eglStreamConsumerReleaseKHR")
    impl_GetStreamFileDescriptorKHR               = auto_cast loader("eglGetStreamFileDescriptorKHR")
    impl_CreateStreamFromFileDescriptorKHR        = auto_cast loader("eglCreateStreamFromFileDescriptorKHR")
    impl_QueryStreamTimeKHR                       = auto_cast loader("eglQueryStreamTimeKHR")
    impl_CreateStreamProducerSurfaceKHR           = auto_cast loader("eglCreateStreamProducerSurfaceKHR")
    impl_SwapBuffersWithDamageKHR                 = auto_cast loader("eglSwapBuffersWithDamageKHR")
    impl_WaitSyncKHR                              = auto_cast loader("eglWaitSyncKHR")
    impl_SetBlobCacheFuncsANDROID                 = auto_cast loader("eglSetBlobCacheFuncsANDROID")
    impl_CreateNativeClientBufferANDROID          = auto_cast loader("eglCreateNativeClientBufferANDROID")
    impl_GetCompositorTimingSupportedANDROID      = auto_cast loader("eglGetCompositorTimingSupportedANDROID")
    impl_GetCompositorTimingANDROID               = auto_cast loader("eglGetCompositorTimingANDROID")
    impl_GetNextFrameIdANDROID                    = auto_cast loader("eglGetNextFrameIdANDROID")
    impl_GetFrameTimestampSupportedANDROID        = auto_cast loader("eglGetFrameTimestampSupportedANDROID")
    impl_GetFrameTimestampsANDROID                = auto_cast loader("eglGetFrameTimestampsANDROID")
    impl_GetNativeClientBufferANDROID             = auto_cast loader("eglGetNativeClientBufferANDROID")
    impl_DupNativeFenceFDANDROID                  = auto_cast loader("eglDupNativeFenceFDANDROID")
    impl_PresentationTimeANDROID                  = auto_cast loader("eglPresentationTimeANDROID")
    impl_QuerySurfacePointerANGLE                 = auto_cast loader("eglQuerySurfacePointerANGLE")
    impl_GetMscRateANGLE                          = auto_cast loader("eglGetMscRateANGLE")
    impl_ClientSignalSyncEXT                      = auto_cast loader("eglClientSignalSyncEXT")
    impl_CompositorSetContextListEXT              = auto_cast loader("eglCompositorSetContextListEXT")
    impl_CompositorSetContextAttributesEXT        = auto_cast loader("eglCompositorSetContextAttributesEXT")
    impl_CompositorSetWindowListEXT               = auto_cast loader("eglCompositorSetWindowListEXT")
    impl_CompositorSetWindowAttributesEXT         = auto_cast loader("eglCompositorSetWindowAttributesEXT")
    impl_CompositorBindTexWindowEXT               = auto_cast loader("eglCompositorBindTexWindowEXT")
    impl_CompositorSetSizeEXT                     = auto_cast loader("eglCompositorSetSizeEXT")
    impl_CompositorSwapPolicyEXT                  = auto_cast loader("eglCompositorSwapPolicyEXT")
    impl_QueryDeviceAttribEXT                     = auto_cast loader("eglQueryDeviceAttribEXT")
    impl_QueryDeviceStringEXT                     = auto_cast loader("eglQueryDeviceStringEXT")
    impl_QueryDevicesEXT                          = auto_cast loader("eglQueryDevicesEXT")
    impl_QueryDisplayAttribEXT                    = auto_cast loader("eglQueryDisplayAttribEXT")
    impl_QueryDeviceBinaryEXT                     = auto_cast loader("eglQueryDeviceBinaryEXT")
    impl_DestroyDisplayEXT                        = auto_cast loader("eglDestroyDisplayEXT")
    impl_QueryDmaBufFormatsEXT                    = auto_cast loader("eglQueryDmaBufFormatsEXT")
    impl_QueryDmaBufModifiersEXT                  = auto_cast loader("eglQueryDmaBufModifiersEXT")
    impl_GetOutputLayersEXT                       = auto_cast loader("eglGetOutputLayersEXT")
    impl_GetOutputPortsEXT                        = auto_cast loader("eglGetOutputPortsEXT")
    impl_OutputLayerAttribEXT                     = auto_cast loader("eglOutputLayerAttribEXT")
    impl_QueryOutputLayerAttribEXT                = auto_cast loader("eglQueryOutputLayerAttribEXT")
    impl_QueryOutputLayerStringEXT                = auto_cast loader("eglQueryOutputLayerStringEXT")
    impl_OutputPortAttribEXT                      = auto_cast loader("eglOutputPortAttribEXT")
    impl_QueryOutputPortAttribEXT                 = auto_cast loader("eglQueryOutputPortAttribEXT")
    impl_QueryOutputPortStringEXT                 = auto_cast loader("eglQueryOutputPortStringEXT")
    impl_GetPlatformDisplayEXT                    = auto_cast loader("eglGetPlatformDisplayEXT")
    impl_CreatePlatformWindowSurfaceEXT           = auto_cast loader("eglCreatePlatformWindowSurfaceEXT")
    impl_CreatePlatformPixmapSurfaceEXT           = auto_cast loader("eglCreatePlatformPixmapSurfaceEXT")
    impl_StreamConsumerOutputEXT                  = auto_cast loader("eglStreamConsumerOutputEXT")
    impl_QuerySupportedCompressionRatesEXT        = auto_cast loader("eglQuerySupportedCompressionRatesEXT")
    impl_SwapBuffersWithDamageEXT                 = auto_cast loader("eglSwapBuffersWithDamageEXT")
    impl_UnsignalSyncEXT                          = auto_cast loader("eglUnsignalSyncEXT")
    impl_CreatePixmapSurfaceHI                    = auto_cast loader("eglCreatePixmapSurfaceHI")
    impl_CreateDRMImageMESA                       = auto_cast loader("eglCreateDRMImageMESA")
    impl_ExportDRMImageMESA                       = auto_cast loader("eglExportDRMImageMESA")
    impl_ExportDMABUFImageQueryMESA               = auto_cast loader("eglExportDMABUFImageQueryMESA")
    impl_ExportDMABUFImageMESA                    = auto_cast loader("eglExportDMABUFImageMESA")
    impl_GetDisplayDriverConfig                   = auto_cast loader("eglGetDisplayDriverConfig")
    impl_GetDisplayDriverName                     = auto_cast loader("eglGetDisplayDriverName")
    impl_SwapBuffersRegionNOK                     = auto_cast loader("eglSwapBuffersRegionNOK")
    impl_SwapBuffersRegion2NOK                    = auto_cast loader("eglSwapBuffersRegion2NOK")
    impl_QueryNativeDisplayNV                     = auto_cast loader("eglQueryNativeDisplayNV")
    impl_QueryNativeWindowNV                      = auto_cast loader("eglQueryNativeWindowNV")
    impl_QueryNativePixmapNV                      = auto_cast loader("eglQueryNativePixmapNV")
    impl_PostSubBufferNV                          = auto_cast loader("eglPostSubBufferNV")
    impl_StreamImageConsumerConnectNV             = auto_cast loader("eglStreamImageConsumerConnectNV")
    impl_QueryStreamConsumerEventNV               = auto_cast loader("eglQueryStreamConsumerEventNV")
    impl_StreamAcquireImageNV                     = auto_cast loader("eglStreamAcquireImageNV")
    impl_StreamReleaseImageNV                     = auto_cast loader("eglStreamReleaseImageNV")
    impl_StreamConsumerGLTextureExternalAttribsNV = auto_cast loader("eglStreamConsumerGLTextureExternalAttribsNV")
    impl_StreamFlushNV                            = auto_cast loader("eglStreamFlushNV")
    impl_QueryDisplayAttribNV                     = auto_cast loader("eglQueryDisplayAttribNV")
    impl_SetStreamMetadataNV                      = auto_cast loader("eglSetStreamMetadataNV")
    impl_QueryStreamMetadataNV                    = auto_cast loader("eglQueryStreamMetadataNV")
    impl_ResetStreamNV                            = auto_cast loader("eglResetStreamNV")
    impl_CreateStreamSyncNV                       = auto_cast loader("eglCreateStreamSyncNV")
    impl_CreateFenceSyncNV                        = auto_cast loader("eglCreateFenceSyncNV")
    impl_DestroySyncNV                            = auto_cast loader("eglDestroySyncNV")
    impl_FenceNV                                  = auto_cast loader("eglFenceNV")
    impl_ClientWaitSyncNV                         = auto_cast loader("eglClientWaitSyncNV")
    impl_SignalSyncNV                             = auto_cast loader("eglSignalSyncNV")
    impl_GetSyncAttribNV                          = auto_cast loader("eglGetSyncAttribNV")
    impl_GetSystemTimeFrequencyNV                 = auto_cast loader("eglGetSystemTimeFrequencyNV")
    impl_GetSystemTimeNV                          = auto_cast loader("eglGetSystemTimeNV")
    impl_BindWaylandDisplayWL                     = auto_cast loader("eglBindWaylandDisplayWL")
    impl_UnbindWaylandDisplayWL                   = auto_cast loader("eglUnbindWaylandDisplayWL")
    impl_QueryWaylandBufferWL                     = auto_cast loader("eglQueryWaylandBufferWL")
    impl_CreateWaylandBufferFromImageWL           = auto_cast loader("eglCreateWaylandBufferFromImageWL")
}
