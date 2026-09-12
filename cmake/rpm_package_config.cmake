# Fedora / openEuler / RHEL 等使用 rpm 包的系统专用打包配置
# 使用方法：cmake -DCPACK_GENERATOR=RPM ..
#            或 cpack -G RPM

set(CPACK_GENERATOR "RPM")

set(CPACK_PACKAGE_NAME "notepad--")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "a text editor like notepad++")
set(CPACK_PACKAGE_DESCRIPTION "Notepad-- 是一个轻量级跨平台文本编辑器，支持 Win/Linux/Mac。")
set(CPACK_PACKAGE_CONTACT "coconil")

set(CPACK_PACKAGE_VERSION "1.22.0")
set(CPACK_PACKAGE_VERSION_MAJOR "1")
set(CPACK_PACKAGE_VERSION_MINOR "22")
set(CPACK_PACKAGE_VERSION_PATCH "0")

# RPM 特有字段
set(CPACK_RPM_PACKAGE_ARCHITECTURE "x86_64")
set(CPACK_RPM_FILE_NAME RPM-DEFAULT)

# 运行时依赖（Fedora 44 下的包名）
set(CPACK_RPM_PACKAGE_REQUIRES
    "qt5-qtbase >= 5.15, qt5-qtconcurrent, qt5-qtnetwork, qt5-qtprintsupport, libgcc")

set(CPACK_RPM_PACKAGE_LICENSE "GPLv3")
set(CPACK_RPM_PACKAGE_GROUP "Applications/Editors")
set(CPACK_RPM_PACKAGE_VENDOR "cxasm")
set(CPACK_RPM_PACKAGE_URL "https://gitee.com/cxasm/notepad--")