# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/config
    REF boost-1.83.0
    SHA512 84ae4e303b9f63e950fc6e01d0318bf223b56518474343a3e0f2d9e5ee631c4ca8ddedb5ec425259806360b30f82b80cd3330ff2ad6cfc8013d7c90d32280516
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
file(APPEND ${CURRENT_PACKAGES_DIR}/include/boost/config/user.hpp "\n#ifndef BOOST_ALL_NO_LIB\n#define BOOST_ALL_NO_LIB\n#endif\n")
file(APPEND ${CURRENT_PACKAGES_DIR}/include/boost/config/user.hpp "\n#undef BOOST_ALL_DYN_LINK\n")

file(APPEND ${CURRENT_PACKAGES_DIR}/include/boost/config/user.hpp "\n#define BOOST_NO_RTTI\n")
file(APPEND ${CURRENT_PACKAGES_DIR}/include/boost/config/user.hpp "\n#define BOOST_NO_TYPEID\n")
file(APPEND ${CURRENT_PACKAGES_DIR}/include/boost/config/user.hpp "\n#define BOOST_NO_CXX11_HDR_TYPEINDEX\n")
file(APPEND ${CURRENT_PACKAGES_DIR}/include/boost/config/user.hpp "\n#define BOOST_EXCEPTION_DISABLE\n")
#file(APPEND ${CURRENT_PACKAGES_DIR}/include/boost/config/user.hpp "\n#define BOOST_NO_EXCEPTIONS\n")
file(APPEND ${CURRENT_PACKAGES_DIR}/include/boost/config/user.hpp "\n#define BOOST_TYPE_INDEX_FORCE_NO_RTTI_COMPATIBILITY\n")

#file(APPEND ${CURRENT_PACKAGES_DIR}/include/boost/config/user.hpp "\n#define BOOST_DISABLE_EXPLICIT_SYMBOL_VISIBILITY\n")
#file(APPEND ${CURRENT_PACKAGES_DIR}/include/boost/config/user.hpp "\n#define BOOST_NO_TYPENAME_WITH_CTOR\n")

if (VCPKG_LIBRARY_LINKAGE STREQUAL dynamic)
    file(APPEND ${CURRENT_PACKAGES_DIR}/include/boost/config/user.hpp "\n#define BOOST_ALL_DYN_LINK\n")
endif()
file(COPY ${SOURCE_PATH}/checks DESTINATION ${CURRENT_PACKAGES_DIR}/share/boost-config)
