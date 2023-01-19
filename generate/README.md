# Go XML parser generation

Use [xgen](https://github.com/xuri/xgen) to generated the Go code.

However, it cannot handle the DOCTYPE declaration at the start of the DASH MPD,
so we instead use the branch `doctype` of the fork
[https://github.com/tobbee/xgen](https://github.com/tobbee/xgen).

Another thing is that all attributes get names with ending "Attr", like "IdAttr", which is not
needed. There is therefore another patch to the xgen tool to remove that.

Another change that is done by a tool is to remove xlink types such as `*Href` and replace by `string`.
This is done by fixmpd.go.
