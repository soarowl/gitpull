linux:
    zig cc --target=x86_64-linux-musl gitpull.c -o gitpull

c:
    v gitpull.v -o gitpull.c -autofree

windows:
    v -prod . -os windows
    # zig cc --target=x86_64-windows-gnu gitpull.c -o gitpull.exe