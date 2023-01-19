#!/bin/sh -v

xgen -l Go -p mpd -i schemas/DASH-MPD-PATCH.xsd -o ../pkg/mpd/patch.go

# MPD URL Parameters (UP)
xgen -l Go -p mpd -i schemas/DASH-MPD-UP.xsd -o generated/up.go
go run . generated/up.go ../pkg/mpd/up.go

# MPD
xgen -l Go -p mpd -i schemas/DASH-MPD.xsd -o generated/mpd.go
go run . generated/mpd.go ../pkg/mpd/mpd.go

# MPD Patch

xgen -l Go -p mpd -i schemas/DASH-MPD-PATCH.xsd -o generated/patch.go
go run . generated/patch.go ../pkg/mpd/patch.go

# CENC - common encryption
xgen -l Go -p mpd -i schemas/CENC.xsd -o generated/cenc.go
go run . generated/cenc.go ../pkg/mpd/cenc.go