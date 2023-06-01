#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/gokul/galileo2023/src/sensors"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/gokul/galileo2023/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/gokul/galileo2023/install/lib/python3/dist-packages:/home/gokul/galileo2023/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/gokul/galileo2023/build" \
    "/usr/bin/python3" \
    "/home/gokul/galileo2023/src/sensors/setup.py" \
     \
    build --build-base "/home/gokul/galileo2023/build/sensors" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/gokul/galileo2023/install" --install-scripts="/home/gokul/galileo2023/install/bin"