# scarlatti-sonatas-k51-k60

[LilyPond](https://lilypond.org/) engraving source files used to create Scarlatti's sonatas (and a minuet) K71 through K80.

## Creating the PDF and MIDI files

(I highly recommend the [Frescobaldi](https://github.com/frescobaldi/frescobaldi) IDE for LilyPond. It makes all the following much easier.)

PDF and MIDI files can be created by compiling an `ly` file with LilyPond, that is, for instance, issuing the following command (assuming you have `lilypond` in your PATH variable):

        lilypond sonata-k71.ly

To create a smaller PDF, try:

        lilypond -dno-point-and-click sonata-k71.ly

You may also [download the latest release](https://github.com/ksnortum/scarlatti-sonatas-k71-k80/releases/latest) to get the compiled PDF and MIDI files.

### Two-sided printing

The pieces are set up so that they can be printed on two sides of the paper, leaving an extra margin amount on the inside pages for binding. If you don't want this, open the file `global.ily`, find the `\paper` block (near the top) and set `two-sided = ##f`.

## Thanks

Thanks to the folks at the [LilyPond user's mailing list](mailto://lilypond-user@gnu.org) for all the help getting LilyPond to do what I wanted.

## License

Copyright © 2025 by <a href="https://github.com/ksnortum/">Knute Snortum</a>, licensed under <a href="https://creativecommons.org/licenses/by-sa/4.0/">CC BY-SA 4.0</a><img src="https://mirrors.creativecommons.org/presskit/icons/cc.svg" alt="" style="max-width: 1em;max-height:1em;margin-left: .2em;"><img src="https://mirrors.creativecommons.org/presskit/icons/by.svg" alt="" style="max-width: 1em;max-height:1em;margin-left: .2em;"><img src="https://mirrors.creativecommons.org/presskit/icons/sa.svg" alt="" style="max-width: 1em;max-height:1em;margin-left: .2em;">

If you use this work, please attribute it to Knute Snortum (<https://github.com/ksnortum/>).
