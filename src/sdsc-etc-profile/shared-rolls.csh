# Add /share/apps/modulefiles to module search path
  if (! $?MODULEPATH ) then
    setenv MODULEPATH /share/apps/modulefiles
  else
    setenv MODULEPATH ${MODULEPATH}:/share/apps/modulefiles
  endif
