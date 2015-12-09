
# patches needed to build a flashable ROM for nx503a

* `cpuinfo_part*.patch`                       : optional
* `disable_requires_openjdk.patch`            : optional
* `file_based_flashable_zip.patch`            : optional
* `fix_vibration_of_vitural_keys.patch`       : needed when enable virtual keys
* `wifi-Allow-building-without-Wifi-HAL.patch`: needed
-------------

generate patches
run `repo diff -u project > output.patch` command.
_-u_ is required to inclued the project path
