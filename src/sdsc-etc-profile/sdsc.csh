# Add /opt/modulefiles/* to module search path
foreach F (`find /opt/modulefiles -maxdepth 1 -mindepth 1 -type d`)
  if (! $?MODULEPATH ) then
    setenv MODULEPATH ${F}
  else if ( "$MODULEPATH" !~ *${F}* ) then
    setenv MODULEPATH ${F}:${MODULEPATH}
  endif
end

# Env vars to locate SDSC resources
setenv SDSCHOME /opt/sdsc
setenv SDSCDEVEL /opt/sdsc/devel
