# Example of Web application using Valum

You will need [meson][1] and [ninja][2] as well as all the [dependencies][3] of
the Valum framework installed in order to build the application.

[1]: http://mesonbuild.com/
[2]: https://ninja-build.org/
[3]: http://docs.valum-framework.org/en/latest/installation/#dependencies

```bash
mkdir build && cd build
meson ..
ninja
```

The resulting binary is ready to be launched!

```bash
./app
```

For more horsepower, set the ``--forks`` flag to run multiple forks of the
example.

```bash
./app --forks=$(nproc --ignore=1)
```

For more details about supported options, set the ``--help`` flag.

```bash
./app --help
```
