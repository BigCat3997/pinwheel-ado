projects = [
  {
    name               = "pinwheel-platform"
    description        = "Core platform services"
    visibility         = "private"
    version_control    = "Git"
    work_item_template = "Agile"
    features = {
      boards       = "enabled"
      repositories = "enabled"
      pipelines    = "enabled"
      testplans    = "disabled"
      artifacts    = "disabled"
    }
  },
  {
    name               = "pinwheel-infra"
    description        = "Infrastructure automation"
    visibility         = "private"
    version_control    = "Git"
    work_item_template = "Scrum"
    features = {
      boards       = "enabled"
      repositories = "enabled"
      pipelines    = "enabled"
      testplans    = "disabled"
      artifacts    = "disabled"
    }
  },
  {
    name               = "pinwheel-sandbox"
    description        = "Experimental work and prototypes"
    visibility         = "private"
    version_control    = "Git"
    work_item_template = "Basic"
  }
]
