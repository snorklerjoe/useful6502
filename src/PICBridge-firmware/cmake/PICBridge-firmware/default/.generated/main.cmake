# cmake files support debug production
include("${CMAKE_CURRENT_LIST_DIR}/rule.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/file.cmake")

set(PICBridge_firmware_default_library_list )

# Handle files with suffix (s|as|asm|AS|ASM|As|aS|Asm), for group default-XC8
if(PICBridge_firmware_default_default_XC8_FILE_TYPE_assemble)
add_library(PICBridge_firmware_default_default_XC8_assemble OBJECT ${PICBridge_firmware_default_default_XC8_FILE_TYPE_assemble})
    PICBridge_firmware_default_default_XC8_assemble_rule(PICBridge_firmware_default_default_XC8_assemble)
    list(APPEND PICBridge_firmware_default_library_list "$<TARGET_OBJECTS:PICBridge_firmware_default_default_XC8_assemble>")
endif()

# Handle files with suffix S, for group default-XC8
if(PICBridge_firmware_default_default_XC8_FILE_TYPE_assemblePreprocess)
add_library(PICBridge_firmware_default_default_XC8_assemblePreprocess OBJECT ${PICBridge_firmware_default_default_XC8_FILE_TYPE_assemblePreprocess})
    PICBridge_firmware_default_default_XC8_assemblePreprocess_rule(PICBridge_firmware_default_default_XC8_assemblePreprocess)
    list(APPEND PICBridge_firmware_default_library_list "$<TARGET_OBJECTS:PICBridge_firmware_default_default_XC8_assemblePreprocess>")
endif()

# Handle files with suffix [cC], for group default-XC8
if(PICBridge_firmware_default_default_XC8_FILE_TYPE_compile)
add_library(PICBridge_firmware_default_default_XC8_compile OBJECT ${PICBridge_firmware_default_default_XC8_FILE_TYPE_compile})
    PICBridge_firmware_default_default_XC8_compile_rule(PICBridge_firmware_default_default_XC8_compile)
    list(APPEND PICBridge_firmware_default_library_list "$<TARGET_OBJECTS:PICBridge_firmware_default_default_XC8_compile>")
endif()


add_executable(${PICBridge_firmware_default_image_name} ${PICBridge_firmware_default_library_list})
set_target_properties(${PICBridge_firmware_default_image_name} PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${PICBridge_firmware_default_output_dir})

target_link_libraries(${PICBridge_firmware_default_image_name} PRIVATE ${PICBridge_firmware_default_default_XC8_FILE_TYPE_link})

# Add the link options from the rule file.
PICBridge_firmware_default_link_rule(${PICBridge_firmware_default_image_name})




