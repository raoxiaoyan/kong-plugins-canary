package = "canary"
version = "1.0.0-1"
source = {
   url = "git+https://gitee.com/raoxy/canary.git"
}
description = {
   detailed = [[
canary插件的使用范围支持global、service、route
## 1.应用场景
– 灰度上线、版本迭代（灰度的量灵活切换）]],
   homepage = "https://gitee.com/raoxy/canary.git",
   license = "MIT"
}
dependencies = {
    "lua-resty-iputils == 0.3.0"
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.canary.handler"] = "kong/plugins/canary/handler.lua",
      ["kong.plugins.canary.init"] = "kong/plugins/canary/init.lua",
      ["kong.plugins.canary.policies.BaseCanary"] = "kong/plugins/canary/policies/BaseCanary.lua",
      ["kong.plugins.canary.policies.CustomizeCanary"] = "kong/plugins/canary/policies/CustomizeCanary.lua",
      ["kong.plugins.canary.policies.DefaultCanary"] = "kong/plugins/canary/policies/DefaultCanary.lua",
      ["kong.plugins.canary.policies.IPCanary"] = "kong/plugins/canary/policies/IPCanary.lua",
      ["kong.plugins.canary.policies.UidCanary"] = "kong/plugins/canary/policies/UidCanary.lua",
      ["kong.plugins.canary.policies.cmatch"] = "kong/plugins/canary/policies/cmatch.lua",
      ["kong.plugins.canary.policies.init"] = "kong/plugins/canary/policies/init.lua",
      ["kong.plugins.canary.schema"] = "kong/plugins/canary/schema.lua"
   },
   copy_directories = {
      "docs"
   }
}
