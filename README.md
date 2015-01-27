    git clone https://github.com/gentu/android_device_zte_nx503a.git device/zte/nx503a
    git clone https://github.com/gentu/android_kernel_zte_nx503a.git kernel/zte/nx503a
    git clone https://gentu@bitbucket.org/gentu/vendor_zte_nx503a.git vendor/zte/nx503a

    mkdir -p .repo/local_manifests/
    ln -sf ../../device/zte/nx503a/roomservice.xml .repo/local_manifests/

    sudo ln -sf "$PWD/device/zte/nx503a/cmtools" /usr/local/bin/
    cmtools s
          ##s = set current directory as source directory
    cmtools cup
          ##c = clean repo
          ###u = update repo
          ####p = patch repo

    # For update device/kernel/vendor use
    cmtools d

    # Compile
    . build/envsetup.sh
    lunch cm_nx503a-userdebug
    mka otapackage

    ### Also useful
    # mka installclean
    # mka bootimage
    # mka recoveryimage

