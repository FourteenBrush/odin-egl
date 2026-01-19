@(default_calling_convention="c", link_prefix="egl")
foreign lib {
    GetError        :: proc() -> Error ---
    QueryAPI        :: proc() -> API ---
    @(link_name="eglChooseConfig")
	_ChooseConfig   :: proc(dpy: Display, attrib_list: [^]i32, configs: [^]Config, config_size: i32, num_config: ^i32) -> b32 ---
    @(link_name="eglGetConfigs")
	_GetConfigs     :: proc(dpy: Display, configs: [^]Config, config_size: i32, num_config: ^i32) -> b32 ---
}

