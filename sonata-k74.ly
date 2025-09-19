%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\include "globals.ily"

\header { 
  title = "Sonata in A major"
  opus = "K.74"
  source = "https://s9.imslp.org/files/imglnks/usimg/e/e0/IMSLP626933-PMLP333914-Sonata_K._74_(as_L._94).pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 0) (0.25 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 0) (0.25 . 0) (0 . 0) (0 . 0))
                      ) \etc

beamPositionsA = \once \override Beam.positions = #'(0 . -3)

%
% Music
%

global = {
  \time 2/4
  \key a \major
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    <a' cs e a>4-> b'-> |
    gs8->(\prall fs16 gs  e8-.) e( |
    b'8-.) d,-. cs-. b-. |
    cs8->( b16 cs  a8-.) e'-. |
    fs16-. fs( e d  a') a( gs fs |
    e16 d cs b  a8-.) e'-. |
    fs16-. fs( e d  a') a( gs fs |
    e16 d cs b  a8-.) e'-. |
    
    \barNumberCheck 9
    fs16( a e a d, a' cs, a' |
    b,8-.) b'(~  b16 a gs fs32 e |
    fs8-.) b(~  b16 a gs32 fs e ds |
    e8-.) b'-\slurShapeA (~  b16 a gs fs32 e |
    fs8-.) b(~  b16 a gs32 fs e ds |
    e8-.) e(~ e16 ds cs b32 a |
    gs16 e a fs  gs e fs ds |
    e16 b cs a  \voiceOne \beamPositionsA b \staffDown gs a fs |
    
    \barNumberCheck 17
    gs16 e fs ds  e8-.) \staffUp \oneVoice r |
    R2 |
  }
  \repeat volta 2 {
    <e' gs b e>4-> fs'-> |
    ds8->(\prall cs16 ds  b8-.) b( |
    fs'8-.[) a,-. gs-. fs-.] |
    gs8(\prall fs16 gs  e fs gs a |
    b16 cs d! e  fs d cs b) |
    cs8(\prall b16 cs  a b cs d |
    
    \barNumberCheck 25
    e16 fs g a  b g fs e) |
    fs8(\prall e16 fs  d8-.) a-. |
    fs'16-. fs( e d  a') a( gs! fs |
    e16 d cs b  a8-.) cs-. |
    d16-. d( cs b  fs') fs( e d) |
    cs8(\prall b16 cs  a16-.) cs( d e |
    b16 e a, e'  gs, e' fs, e' |
    \stemDown e,8-.) e'(~  e16 d cs b32 a |
    
    \barNumberCheck 33
    b8-.) e(~  e16 d cs32 b a gs |
    a8-.) e'-\slurShapeB (~  e16 d cs b32 a |
    b8-.) e(~  e16 d cs32 b a gs |
    a8-.) a'(~  a16 gs fs e32 d |
    cs16 a d b  cs a b gs |
    \stemNeutral a16 e fs d  e cs d b |
    cs16 a b gs  a8-.) r |
    R2 |
  }
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    <a, e' a>4-> d-> |
    e4-> r |
    e4-. e-. |
    <a, a'>4-> r8 cs'-. |
    d4 r8 d-. |
    cs4 r8 cs-. |
    d4 r8 d-. |
    cs4 r8 cs-. |
    
    \barNumberCheck 9
    d8-.[ cs-. b-. a-.] |
    e4-. gs4( |
    a4-.) b( |
    cs4-.) gs( |
    a4-.) b( |
    cs4-.)  ds( |
    e8-.) a,-. b-. b,-. |
    e8-. r r4 |
    
    \barNumberCheck 17
    \voiceTwo r4 r16 b( gs b |
    \oneVoice e,4-\insideSlur ->) r |
  }
  \repeat volta 2 {
    <e e'>4-> <a a'>-> |
    <b b'>4-> r |
    b'4-. b,-. |
    e4-> r |
    e4-. e,-. |
    a4-> r |
    
    \barNumberCheck 25
    a'4-. a,-. |
    d4-> r |
    <d d'>4-. q-. |
    <cs cs'>4-> r |
    <b b'>4-. <e, e'>-. |
    <a a'>4-> r8 a'-. |
    gs8-.[ fs-. e-. d-.] |
    cs4-. cs( |
    
    \barNumberCheck 33
    d4-.) e( |
    fs4-.) <cs a'>( |
    <d a'>4-.) <e gs>( |
    <fs a>-.) <gs b>( |
    a8-.) d,-. e-. e,-. |
    a8-. r r4 |
    r4 r16 e'( cs e |
    a,4->) r |
  }
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s2\f |
    s2 * 4 |
    s4. s8\p |
    s2 |
    s4. s8\f |
    
    \barNumberCheck 9
    s2 * 3 |
    s8 s4.\p |
    s2 |
    s8 s4.\f |
    s2 * 2 |
    
    \barNumberCheck 17
    s2 * 2 |
  }
  \repeat volta 2 {
    s2\f |
    s2 * 5 |
    
    \barNumberCheck 25
    s2 * 3 |
    s4. s8\mf |
    s2 |
    s4 s16 s8.\cresc |
    s2 |
    s2-\tweak Y-offset -1.5 \f |
    
    \barNumberCheck 33
    s2 |
    s8 s4.\p |
    s2 |
    s8 s4.\f |
    s2 * 4 |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 4 = 132
    s2 * 16 |
    
    \barNumberCheck 17
    \set Score.tempoHideNote = ##t
    \tempo 4 = 120 s4 \tempo 4 = 112 s |
    s2 |
  }
  \repeat volta 2 {
    \tempo 4 = 132
    s2 * 6 |
    
    \barNumberCheck 25
    s2 * 8 |
    
    \barNumberCheck 33
    s2 * 5 |
    \tag layout { s2 * 3 | }
    \tag midi {
      \alternative {
        {
          s2 |
          \tempo 4 = 120 s4 \tempo 4 = 112 s |
          s2 |
        }
        {
          s4 \tempo 4 = 116 s |
          \tempo 4 = 104 s4 \tempo 4 = 92 s |
          \tempo 4 = 80 s2 |
        }
      }
    }
  }
}

forceBreaks = {
  s2 * 6 \break
  s2 * 6 \break
  s2 * 6 \break
  s2 * 6 \break
  s2 * 5 \break
  s2 * 5 \break
}

\score {
  \keepWithTag layout  
  \new PianoStaff \with {
    \override StaffGrouper.staff-staff-spacing = 
      #'((basic-distance . 8)
         (padding . 1))
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \tempi
    \new Devnull \forceBreaks
  >>
  \layout {}
}

\include "articulate.ly"

\score {
  \keepWithTag midi
  \articulate <<
    \new Staff = "upper" << \rightHand \dynamics \tempi >>
    \new Staff = "lower" << \leftHand \dynamics \tempi >>
  >>
  \midi {}
}
