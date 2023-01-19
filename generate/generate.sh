#!/bin/sh -v

xgen -l Go -p mpd -i schemas/DASH-MPD-PATCH.xsd -o ../pkg/mpd/patch.go

# MPD URL Parameters
xgen -l Go -p mpd -i schemas/DASH-MPD-UP.xsd -o generated/up.go
go run . generated/up.go ../pkg/mpd/up.go


# MPD first
xgen -l Go -p mpd -i schemas/DASH-MPD.xsd -o generated/mpd.go
go run . generated/mpd.go ../pkg/mpd/mpd.go
