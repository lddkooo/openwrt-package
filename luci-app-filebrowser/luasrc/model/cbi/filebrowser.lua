m = Map("filebrowser", translate("文件管理器"))
m.description = translate("FileBrowser是一个基于Go的在线文件管理器，助您方便的管理设备上的文件，初始用户名跟密码都为：admin")

m:section(SimpleSection).template  = "filebrowser/filebrowser_status"

s = m:section(TypedSection, "filebrowser")
s.addremove = false
s.anonymous = true

o = s:option(Flag, "enabled", translate("启用"))
o.rmempty = false

o = s:option(ListValue, "addr_type", translate("监听地址"))
o:value("local", translate("监听本机地址"))
o:value("lan", translate("监听局域网地址"))
o:value("wan", translate("监听全部地址"))
o.default = "lan"
o.rmempty = false

o = s:option(Value, "port", translate("监听端口"))
o.placeholder = 8989
o.default = 8989
o.datatype = "port"
o.rmempty = false

o = s:option(Value, "root_dir", translate("开放目录"))
o.placeholder = "/"
o.default = "/"
o.rmempty = false

o = s:option(Value, "db_dir", translate("数据库目录"))
o.description = translate("普通用户请勿随意更改")
o.placeholder = "/etc"
o.default = "/etc"
o.rmempty = false

o = s:option(Value, "db_name", translate("数据库名"))
o.description = translate("普通用户请勿随意更改")
o.placeholder = "filebrowser.db"
o.default = "filebrowser.db"
o.rmempty = false

return m
