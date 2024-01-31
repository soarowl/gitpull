linux:
    v -prod .
    # zig cc --target=x86_64-linux-musl gitpull.c -o gitpull # double free
    # zig cc --target=x86_64-linux-musl gitpull.c -o gitpull -L/home/znw/src/v/thirdparty/libgc/ -I /home/znw/src/v/thirdparty/libgc/include/

c:
    v gitpull.v -o gitpull.c -autofree
    # v gitpull.v -o gitpull.c #gc
    # v gitpull.v -o gitpull.c -nogc

windows:
    v -prod . -os windows
    # zig cc --target=x86_64-windows-gnu gitpull.c -o gitpull.exe # can't compile