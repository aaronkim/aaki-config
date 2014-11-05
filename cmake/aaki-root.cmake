message("Welcome Aaki's root.")

function(fn_find_cfg result config_dir cfg_file)
	STRING(REPLACE "/" ";" temp_list1 ${config_dir})
	SET(temp_list2 ${temp_list1})

	foreach(temp1 ${temp_list1})
		unset(search_dir)
		foreach(temp2 ${temp_list2})
			set(search_dir ${search_dir}/${temp2})
		endforeach(temp2)
		if(EXISTS ${search_dir}/${cfg_file})
			message("EXISTS_file : " ${search_dir}/${cfg_file})
			set(${result} ${search_dir} PARENT_SCOPE)
			break()
		else(EXISTS ${search_dir}/${cfg_file})
			list(REMOVE_AT temp_list2 -1)
		endif(EXISTS ${search_dir}/${cfg_file})
	endforeach(temp1)
endfunction(fn_find_cfg)


message("EXISTS_file on root : " ${search_dir}/aaki-root.cmake)
set(ENV{AAKI_CFG.TEMP} "temp" PARENT_SCOPE)
include($ENV{AAKI_CFG.ROOT}/config/aaki-config.cmake OPTIONAL)

set(ENV{AAKI_CFG} "fixed" PARENT_SCOPE)