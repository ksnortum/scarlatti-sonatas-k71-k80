%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\include "globals.ily"

\header { 
  title = "Sonata in G minor"
  opus = "K.76"
  source = "https://vmirror.imslp.org/files/imglnks/usimg/6/6d/IMSLP626935-PMLP333966-Sonata_K._76_(as_L._185).pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0 . 0) (0 . -15) (0 . -2) (0 . 4)) \etc
slurShapeB = \shape #'(
                        ((0 . 2.5) (0 . 2.5) (0 . 2.5) (0 . 2.5))
                        ((0 . 1) (0 . 1) (0 . 1) (0 . 1))
                      ) \etc
slurShapeC = \shape #'((0 . -1) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeD = \shape #'(
                        ((0 . 0) (2 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeE = \shape #'((0 . -1) (0 . 1.5) (0 . 0) (0 . -1)) \etc
slurShapeF = \shape #'((0 . 0) (9 . 3) (0 . -2) (0 . -7)) \etc

stemLengthA = \once \override Stem.length = 8

%
% Music
%

global = {
  \time 3/8
  \key g \minor
}

rightHandUpper = \relative { 
  \repeat volta 2 {
    g'8-. bf-. d-. |
    g16( fs g bf, a c |
    bf8-.) g-. c-. |
    \voiceOne d8( ef d |
    \oneVoice g,8-.) <c, c'>( <d a'> |
    <d bf'>16-.)\noBeam d'8->( g,16 c a) |
    r16 d8->( g, 16 c a |
    bf16 d g e a d, |
    
    \barNumberCheck 9
    bf'16 gs a f g e |
    f16 d ef! g bf d, |
    cs16 e g, bf a e |
    f'16-.) a8->( d,16 g e |
    <d f>16-.) a'8->( d,16 g e |
    \stemDown f16 d ef! cs d) d,( |
    \stemNeutral bf'16 gs a f g e |
    f16 d' bf g e cs' |
    
    \barNumberCheck 17
    f,16 d' bf g e cs' |
    d8.) e16( a, cs |
    g'8. e16 g <cs, e> |
    \voiceOne f16 a g f e g |
    f16 a g f e g |
    f8.)\noBeam \oneVoice d16( g e |
    a16-.) d,8->( e16 a, cs |
    \voiceOne d4) r16 cs-\slurShapeB ( |
    
    \barNumberCheck 25
    \oneVoice <d, f a d>4.->) |
    \set subdivideBeams = ##t
    r32 f'-\slurShapeA ( e d  c! bf a g  f' e d c |
    bf[ a g f] \clef bass e d cs bf  a g f e |
    << 
      { \staffDown \hideNoteHead d4.) | } 
      \new Voice { \staffUp R4. \clef treble | }
    >>
  }
  \repeat volta 2 {
    \staffUp d'8-. fs-. a-. |
    \set subdivideBeams = ##f
    d16( cs d fs, e g |
    fs4) g8-. |
    a16( c! ef! fs a c, |
    
    \barNumberCheck 33
    bf8-.) g-. g'(~ |
    g16 bf, a f'! ef c |
    d16-.) f8( bf,16 ef c |
    d16-.) f8( bf,16 ef c |
    \voiceFour d8)( c16 bf a8 |
    bf8 c16 bf a8 |
    b4) \stemLengthA b8-. |
    \oneVoice <c ef>16-. g'8( c,16 f d |
    
    \barNumberCheck 41
    ef16-.) g8( c,16 f d |
    \voiceOne ef16 g f ef d f |
    ef16 g f ef d f |
    e16 d e8-.) a,-. |
    \oneVoice f'16-. a8( d,16 g e |
    f16-.) \offsetPositions #'(-1.5 . 0) a8( d,16 g e |
    \voiceOne fs16 g a4)~ |
    a16 d,-\slurShapeD ( g8. f!16 |
    
    \barNumberCheck 49
    \oneVoice ef!16 cs d bf c a |
    bf16 g af c ef g, |
    fs4) a8->(~ |
    a16 c ef fs a c, |
    bf16-.) d8( g,16 c a |
    \stemDown <g bf>16-.) d'8( g,16 c a |
    bf16) g'( ef c a fs' |
    bf,16 g' ef c a fs' |
    
    \barNumberCheck 57
    g8.) a16( d, fs |
    g16 d c bf a c |
    bf16 d c bf a c |
    bf16 d c bf a c |
    \stemNeutral bf8.) g16( c a |
    d16-.) g,8( a16 d, fs |
    g16) g'( ef c a fs' |
    g4.) |
    
    \barNumberCheck 65
    \set subdivideBeams = ##t
    r32 g-\slurShapeF ( f! ef!  d c bf a  g f ef d |
    c32 bf a g r8 r |
    << 
      { \staffDown \hideNoteHead g,4.) | } 
      \new Voice { \staffUp R4. | } 
    >>
  }
}

rightHandLower = \relative {
  \repeat volta 2 {
    s4. * 3 |
    \voiceFour \offsetPositions #'(0 . 1) d''16( bf a g fs a |
    \hideNoteHead g8) s4 |
    s4. * 3 |
    
    \barNumberCheck 9
    s4. * 8 |
    
    \barNumberCheck 17
    s4. * 2 |
    s4 s16 \hideNoteHead cs( |
    d8 e16 d cs8 |
    d8 e16 d cs8 |
    d8.) s |
    s4. |
    r16 a( g f e8) |
    
    \barNumberCheck 25
    s4. * 4 |
  }
  \repeat volta 2 {
    s4. * 4 |
    
    \barNumberCheck 33
    s4. * 4 |
    \voiceOne r16 f'( ef d c ef |
    d16 f ef d c ef |
    d16 c d8-.) g,-. |
    s4. |
    
    \barNumberCheck 41
    s4. |
    \voiceFour c8-. d16( c b8 |
    c8 d16 c b8 |
    c16 b c8-.) r |
    s4. * 2 |
    d8.( c16 bf a |
    bf8. c16 d8) |
    
    \barNumberCheck 49
    s4. * 16 |
    
    \barNumberCheck 65
    s4. * 3 |
  }
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  \repeat volta 2 {
    s4. * 3 |
    \voiceThree g4( fs8) |
    s4. * 4 |
    
    \barNumberCheck 9
    s8 a4 |
    s4. * 5 |
    \voiceTwo g,8 cs( a) |
    s4. |
    
    \barNumberCheck 17
    s4. * 3 |
    \voiceThree d'4(cs8) |
    d4( cs8) |
    \oneVoice d16( cs d f, e cs' |
    \voiceThree d4 cs8) |
    d4( cs8) |
    
    \barNumberCheck 25
    s4. * 4 |
  }
  \repeat volta 2 {
    s4. * 2 |
    \oneVoice d16( cs d fs, e g |
    \voiceThree d8 c'!4) |
    
    \barNumberCheck 33
    s4. * 4 |
    s8 \hideNoteHead ef,-\slurShapeC ( \hideNoteHead f |
    bf4 a8) |
    s4. * 2 |
    
    \barNumberCheck 41
    s4. * 6 |
    r8 d8.( c16 |
    bf8) s4 |
    
    \barNumberCheck 49
    c8-. d4 |
    s4. * 7 |
    
    \barNumberCheck 57
    s4. * 2 |
    bf4( a8) |
    bf4( a8) |
    \oneVoice g16( fs g bf, a fs' |
    \voiceThree g4 fs8 |
    \hideNoteHead g8) s4 |
    s4. |
    
    \barNumberCheck 65
    s4. * 3 |
  }
}

leftHandLower = \relative {
  \repeat volta 2 {
    R4. |
    g8-. bf-. d-. |
    g16( fs g bf, a c) |
    \voiceTwo bf,8( c d) |
    \oneVoice ef16( d ef g fs a |
    g16 fs g bf, a fs' |
    g16 fs g bf, a fs' |
    g8-.) <e cs'>_( <f! d'> |
    
    \barNumberCheck 9
    \voiceTwo <g d'>8-.) cs,( a |
    \oneVoice <d a'>8) \offsetPositions #'(1 . 1) g,( g' |
    \stemDown a,8) g'( cs,) |
    d'16( cs d f, e cs' |
    d16 cs d f, e cs' |
    d,8-.) \offsetPositions #'(-2 . 0) g( f |
    \voiceThree g8-.) a4 |
    \oneVoice <d, d'>8-. <g, g'>-. <a a'>-. |
    
    \barNumberCheck 17
    <d d'>8-. <g, g'>-. <a a'>-. |
    bf'16( g e cs a a' |
    bf16 g e cs a g') |
    \voiceTwo f8( g a) |
    f8( g a) |
    s4. |
    f8( g a) |
    f8( g a) |
    
    \barNumberCheck 25
    \set subdivideBeams = ##t
    \oneVoice d,32( a' g f  e d cs bf  a g f e |
    d4.) |
    R4. |
    <d d'>4. |
  }
  \repeat volta 2 {
    R4. |
    d'8-. fs-. a-. |
    s4. |
    \voiceTwo d,4( fs8) |
    
    \barNumberCheck 33
    \set subdivideBeams = ##f
    \oneVoice g,16( bf d g bf d |
    <ef, c'>8-.) f!-. f,-. |
    bf'16( a bf d, c a' |
    bf16 a bf d, c a' |
    bf8) ef, f |
    \voiceTwo bf,8( ef f) |
    \oneVoice g8.( f16 ef d |
    c' b c ef, d b' |
    
    \barNumberCheck 41
    c b c ef, d b' | 
    c8-.) f,( g |
    <c, c'>8) <f, f'>-. <g g'>-. |
    a'8.( g16 f e |
    d'16 cs d f, e cs' |
    d16 cs d f, e cs' |
    \voiceTwo d,4)( fs8 |
    g8. a16 bf8) |
    
    \barNumberCheck 49
    c,8 fs( d |
    \oneVoice <g d'>8-.) c,( c') |
    r16 d,( fs a c ef |
    fs,8-.) d-. fs-. |
    g16( fs g bf, a fs' |
    g16 fs g bf, a fs' |
    g8-.) <c, c'>-. <d d'>-. |
    g8-. <c, c'>-. <d d'>-. |
    
    \barNumberCheck 57
    ef'16( c a fs d a' |
    bf8-.) c-. d-. |
    \voiceTwo g,( c, d) |
    g( c, d) |
    s4. |
    bf8( c d |
    \oneVoice g8-.) <c, c'>-. <d d'>-. |
    \set subdivideBeams = ##t
    g32-\slurShapeE ( d' c bf  a g fs e  d c bf a |
    
    \barNumberCheck 65
    g4.) |
    r8 fs'32 e d c  bf a g fs |
    g4. |
  }
}

leftHand = {
  \global
  \clef bass
  <<
    \new Voice \leftHandUpper
    \new Voice \leftHandLower
  >>
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s4.\f |
    s4. * 7 |
    
    \barNumberCheck 9
    s4. * 8 |
    
    \barNumberCheck 17
    s4. |
    s8.\> s\mf |
    s4.\cresc |
    s4.\f |
    s4. * 4 |
    
    \barNumberCheck 25
    s4. * 4 |
  }
  s4.\f |
  s4. * 3 |
  
  \barNumberCheck 33
  s4. * 2 |
  s16 s\p s4 |
  s4. |
  s4.\cresc |
  s4. * 2 |
  s16\f s\p s4 |
  
  \barNumberCheck 41
  s4. |
  s4.\cresc |
  s4. * 2 |
  \tag layout { s4.\!^\sempreF } \tag midi { s4.\f } |
}

tempi = {
  \repeat volta 2 {
    \tempo "Presto" 4. = 72
    s4. * 24 |
    
    \barNumberCheck 25
    s4. * 2 |
    \set Score.tempoHideNote = ##t
    s8 \tempo 4. = 66 s \tempo 4. = 60 s |
    s4. |
  }
  \repeat volta 2 {
    \tempo 4. = 72
    s4. * 4 |
    
    \barNumberCheck 33
    s4. * 32 |
    
    \barNumberCheck 65
    s4. |
    \tag layout { s4. * 2 | }
    \tag midi {
      \alternative {
        {
          s8 \tempo 4. = 66 s \tempo 4. = 60 s |
          s4. |
        }
        {
          \tempo 4. = 63 s8 \tempo 4. = 56 s \tempo 4. = 50 s |
          s4. |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s4. * 6 \break
  s4. * 6 \break
  s4. * 6 \break
  s4. * 6 \break
  s4. * 4 \pageBreak
  
  % page 2
  s4. * 7 \break
  s4. * 7 \break
  s4. * 7 \break
  s4. * 6 \break
  s4. * 7 \break
}

\score {
  \keepWithTag layout  
  \new PianoStaff \with {
    \override StaffGrouper.staff-staff-spacing = 
      #'((basic-distance . 9)
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
