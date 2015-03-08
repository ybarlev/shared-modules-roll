# Add /share/apps/modulefiles to module search path
  if test -z "$MODULEPATH"; then
    export MODULEPATH=/share/apps/modulefiles
  else
    export MODULEPATH=${MODULEPATH}:/share/apps/modulefiles
  fi
