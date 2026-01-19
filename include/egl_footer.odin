@(default_calling_convention="c", link_prefix="egl")
foreign lib {
    GetError :: proc() -> Error ---
    QueryAPI :: proc() -> API ---
}

