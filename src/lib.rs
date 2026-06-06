use zed_extension_api as zed;

struct ReefExtension {}

impl zed::Extension for ReefExtension {
    fn new() -> Self {
        Self {}
    }
}

zed::register_extension!(ReefExtension);
