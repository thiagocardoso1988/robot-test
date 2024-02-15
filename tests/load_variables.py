import os

env = os.getenv("ENV", "production")

if env == "production":
    from ..variables.variables_production import *
elif env == "staging":
    from ..variables.variables_staging import *
else:
    raise ValueError(f"Unsupported environment: {env}")
