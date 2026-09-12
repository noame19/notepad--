# Fedora / openEuler / RHEL 等使用 rpm 包的系统专用打包配置
# 配合 -DCPACK_GENERATOR=RPM 使用

set(CPACK_GENERATOR "RPM")

set(CPACK_PACKAGE_NAME "notepad--")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "a text editor like notepad++")
set(CPACK_PACKAGE_DESCRIPTION "Notepad-- 是一个轻量级跨平台文本编辑器，支持 Win/Linux/Mac。")
set(CPACK_PACKAGE_CONTACT "coconil")

set(CPACK_PACKAGE_VERSION "3.8.3")
set(CPACK_PACKAGE_VERSION_MAJOR "3")
set(CPACK_PACKAGE_VERSION_MINOR "8")
set(CPACK_PACKAGE_VERSION_PATCH "3")

# RPM 特定字段
# Fedora 41+ / Fedora 44 默认 Qt6，Qt5 子模块被合并到 qt5-qtbase
# 因此依赖只写 qt5-qtbase，不再单独列出 qt5-qtconcurrent/qt5-qtnetwork/qt5-qtprintsupport
set(CPACK_RPM_PACKAGE_ARCHITECTURE "x86_64")
set(CPACK_RPM_FILE_NAME RPM-DEFAULT)

set(CPACK_RPM_PACKAGE_REQUIRES
    "qt5-qtbase >= 5.15, libgcc")

set(CPACK_RPM_PACKAGE_LICENSE "GPLv3")
set(CPACK_RPM_PACKAGE_GROUP "Applications/Editors")
set(CPACK_RPM_PACKAGE_VENDOR "cxasm")
set(CPACK_RPM_PACKAGE_URL "https://gitee.com/cxasm/notepad--")