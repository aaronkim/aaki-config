message("Welcome Aaki's config.")

include($ENV{AAKI_CFG.CFG_DIR}/aaki-config-util.cmake OPTIONAL)
include($ENV{AAKI_CFG.CFG_DIR}/aaki-config-build.cmake OPTIONAL)

set(ENV{AAKI_CFG} "fixed")