dnl Configury specific to the libfabric swx provider

dnl Called to configure this provider
dnl
dnl Arguments:
dnl
dnl $1: action if configured successfully
dnl $2: action if not configured successfully
dnl
AC_DEFUN([FI_SWX_CONFIGURE],[
	# swx provider will never be built inline. It must be configured as dynamically loaded
	swx_h_happy=0
	AS_IF([test $swx_dl -eq 1], [swx_h_happy=1], [swx_h_happy=0])
	AS_IF([test $swx_h_happy -eq 1], [$1], [$2])
])
