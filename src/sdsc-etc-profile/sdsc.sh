# Add /opt/modulefiles/* to module search path
for F in `find /opt/modulefiles -maxdepth 1 -mindepth 1 -type d`; do
  if test -z "$MODULEPATH"; then
    export MODULEPATH=${F}
  elif ! [[ "${MODULEPATH}" =~ "${F}" ]]; then
    export MODULEPATH=${F}:${MODULEPATH}
  fi
done

# Env vars to locate SDSC resources
export SDSCHOME=/opt/sdsc
export SDSCDEVEL=/opt/sdsc/devel
