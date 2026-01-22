import "core:time"

// silence explicitly generated things so we have less cleanup to do
_ :: c
_ :: lib

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
