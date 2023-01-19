# Generate DASH MPD

In this repo, Go code to represent DASH-MPD is first auto-generated, and
then modified so that it can be used in an efficient way.

The XML Schema for MPEG DASH MPD is the 5'th edition fetched from the [DASHSchema repo](https://github.com/MPEGGroup/DASHSchema)
as commit `993cb92`.

* [MPD.xsd](https://github.com/MPEGGroup/DASHSchema/blob/5th-Ed/DASH-MPD.xsd)

In addition, there is a schema for MPD Patch at the same repo:
* [DASH-MPD-PATCH.xsd](https://github.com/MPEGGroup/DASHSchema/blob/5th-Ed/DASH-MPD-PATCH.xsd)

and for `URL Parameters (UP)` at
* [DASH-MPD-UP.xsd](https://github.com/MPEGGroup/DASHSchema/blob/5th-Ed/DASH-MPD-UP.xsd)


The XSDs have been downloaded and can be found in the subdirectory `generate/schemas`.

The generation is handled by scripts in the `generate` directory.
