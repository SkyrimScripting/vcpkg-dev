vcpkg_from_git(
    OUT_SOURCE_PATH SOURCE_PATH
    URL https://github.com/mrowrpurr/skse-library-demo.git
    REF 7d2bb66216231380d769af4309794348612dc129
)

vcpkg_cmake_configure(SOURCE_PATH "${SOURCE_PATH}")
vcpkg_cmake_install()
vcpkg_cmake_config_fixup(CONFIG_PATH lib/cmake/MySkseLibraryExample)

set(SOURCE_INCLUDE_PATH "${SOURCE_PATH}/Include")
file(INSTALL "${SOURCE_INCLUDE_PATH}" DESTINATION "${CURRENT_PACKAGES_DIR}")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
file(RENAME ${SOURCE_PATH}/LICENSE ${CURRENT_PACKAGES_DIR}/share/MySkseLibraryExample/LICENSE)
