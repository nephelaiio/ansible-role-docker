set allow-duplicate-variables := true

import ".devbox/virtenv/pokerops.ansible-utils.molecule/justfile"

MOLECULE_SCENARIO := env_var_or_default("MOLECULE_SCENARIO", "install")
