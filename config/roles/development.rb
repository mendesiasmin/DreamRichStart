name "development"
description "Install and configure rails application @ dev_env on vagrant"

run_list *[
  'recipe[api]',
]
