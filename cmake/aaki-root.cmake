message("Welcome Aaki's root.")

message("Root : " ${search_dir})
set(ENV{AAKI_CFG.TEMP} "temp" PARENT_SCOPE)
set(ENV{AAKI_CFG.CFG_DIR} $ENV{AAKI_CFG.ROOT}/aaki-config/cmake)
include($ENV{AAKI_CFG.CFG_DIR}/aaki-config.cmake OPTIONAL)

