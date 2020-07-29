# 概述
luarocks 3.3+
# 生成rockspec文件(安装了luarocks？)
```text
luarocks write_rockspec --output canary-1.0.0-1.rockspec --lua-version=5.1
```
#生成rock.src文件
```lua
luarocks pack canary-1.0.0-1.rockspec 1.0.0
```
# 上传至rockspec网站 
```lua
https://luarocks.org/upload
https://blog.csdn.net/mkmkmkhh/article/details/81772949
```

