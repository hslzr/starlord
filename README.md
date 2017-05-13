
A docker container with mostly everything you need to detect code smell in your ruby cody

## Usage
You just need to type

```
$ docker run -v $(pwd):/code thelastinuit/starlord
```

This will get you the output with all the things you need to fix or take care of.

Since we have `rubocop` and `reek`, youn do things like:

```
$ docker run -v $(pwd):/code thelastinuit/starlord rubocop -a
```
To fix the possible issues.

```
$ docker run -v $(pwd):/code thelastinuit/starlord rubocop -R
```
To tell `rubocop`to consider is a Rails project.

Basically, you can do whatever you usually do with `rubocop` and `reek` in you console.

Happy code smell detecting, y'all!
