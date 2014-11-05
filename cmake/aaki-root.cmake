message("Welcome Aaki's root.")

message("Root : " ${search_dir})
set(ENV{AAKI_CFG.TEMP} "temp" PARENT_SCOPE)
set(ENV{AAKI_CFG.FILE} $ENV{AAKI_CFG.ROOT}/aaki-config/cmake/aaki-config.cmake)
include($ENV{AAKI_CFG.FILE} OPTIONAL)

set(ENV{AAKI_CFG} "fixed" PARENT_SCOPE)