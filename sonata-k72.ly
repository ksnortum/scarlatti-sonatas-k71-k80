%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\include "globals.ily"

\header { 
  title = "Sonata in C major"
  opus = "K.72"
  source = "https://ks15.imslp.org/files/imglnks/usimg/4/46/IMSLP626931-PMLP333889-Sonata_K._72_(as_L._401).pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 1) (0 . 1))
                        ((0 . 0) (0 . 0) (3.5 . 5) (2 . 0))
                      ) \etc
slurShapeB = \shape #'((0 . -1) (0 . 1) (0 . 0) (0 . 0)) \etc
slurShapeC = \shape #'(
                        ((0 . -2) (0 . 4) (0 . 1) (0 . 0))
                        ((0 . 5) (0 . 5) (0 . 5) (0 . 5))
                      ) \etc

%
% Music
%

global = {
  \time 4/4
  \key c \major
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    c''8-. c-. c-. c-.  c16( g c e  \stemDown c8-.) g-. |
    e'8-. e-. e-. e-.  e16( c e g  e8-.) c-. |
    g'8-. g-. g-. g-.  c16-\slurShapeA ( g e g  c, e g, c |
    \stemNeutral e,16 g r8 r4 
    << 
      { \staffDown s8. \hideNoteHead c,,16) } 
      \new Voice { r4 } 
    >>
    \staffUp r16 c'( e g |
    c16 g c e  g c, e g  c g e g c,4) |
    r2 r4 r16 g'( f g |
    a16 f e f  g e d e  f d c d  e8-.) c-. |
    r8 d-. b-. c-.  a-. d-.  g,16-. e'( d e |
    
    \barNumberCheck 9
    f16 d c d  e c b c  d c b a  \stemDown g8-.) c-. |
    \stemNeutral a8-. d-. g,-.[ c-.]  f,-. d'-. g,-.[ b-.] |
    e16( d c b  a cs e g,  fs g a fs  d-.) a'( g a |
    bf16 g fs g  a d, cs d  bf' g fs g  a d, cs d |
    bf'16 g fs g  d' g, fs g  ef' c b c  d g, fs g |
    ef'16 c b c  d g, fs g   ef' g ef d  c ef c bf |
    a16 ef' c bf  a c a g  fs c' a g  fs a fs e! |
    d4) r r8 d'-. d-. d-. |
    
    \barNumberCheck 17
    e16( fs g a  b g a fs  g8-.) d-. d-. d-. |
    b8-. g-. a-.[ d,-.]  b'-. g-. a-.[ d,-.] |
    b'8-. g-. a-.[ d,-.]  g4-> r |
  }
  \repeat volta 2 {
    g'8-. g-. g-. g-.  g16( d g b  g8-.) d-. |
    b8-. d-. b-.[ d-.]  g16( d b d  g,-.) d'( c d |
    e16 c b c  d g, fs g  e' c b c  g' c, b c |
    a'16 f! e f  g c, b c  a' d, cs d  e a, gs a |
    f'16 d cs d  e a, gs a  fs' d cs d  a' d, cs d |
    
    \barNumberCheck 25
    b'16 g fs g  a d, cs d  b' e, ds e  fs b, as b |
    g'16 e ds e  fs b, as b  gs' e ds e  b' d, c b |
    e16 a, gs a  b e, ds e  c'8-.) c-. c-. c-. |
    c8-. g-. a-.[ f-.]  c'-. g-. a-.[ f-.] |
    c'8-. g-. \stemUp d'-.[ g,-.]  \stemNeutral e'16-. c-\slurShapeB ( e g
      c g e c |
    a'16 a, g' g,  f' f, e' e,  d'-.) g,( b d  g ef f d |
    ef16 c b c  d g, fs g  ef' c b c  d g, fs g |
    e'!16-.) c-\slurShapeC ( e g  c af bf g  af f e f  g c, b! c |
    
    \barNumberCheck 33
    af'16 f e f  g c, b c  af' c g c  f, c' ef, c' |
    d,16 g c, g'  b,! g' a,! g'  g, c f, c'  e,! c' d, c' |
    c,16-.) b'( c d  e c d b  c8-.) g'-. g-.[ g-.] |
    e8-. c-. d-.[ g,-.]  e'-. c-. d-.[ g-.] |
    e8-. c-. d-.[ g,-.]  c4-> r |
  }
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    r2 c'8-. c-. c-. c-. |
    c16( g c e  c8-.) g-.  e'-. e-. e-. e-. |
    e,16( c e g  e c e g)  c,,4 r |
    r8 c''16 e  g, c e, g  c, e g, c  c,4 |
    r2 r4 r16 c'( e g |
    c16 g c e  g, c, e g  c, g e g  c,8-.) c-. |
    f'8-. f'-. e,-.[ e'-.]  d,-. d'-.  c16( g f g |
    a16 f e f  g e d e  f d c d  e8-.) c-. |
    
    \barNumberCheck 9
    d8-. b-. c-.[ c,-.]  g'4 r16 e'( d e |
    f16 d c d  e c b c  d c b a  g' f e d |
    c4 cs d) r8 fs( |
    g8) g-. r fs(  g) g-. r fs( |
    \stemDown g8) g,-. r b'!(  c) c-. r b( |
    c8) c-. r b( c4) r |
    \stemNeutral <c,, c'>4 q <d d'> q |
    r16 d'( e fs  g a b c  d e fs d  g fs e d |
    
    \barNumberCheck 17
    c16 b a g  d'8-.) d,-.  g16( g' d g,)  d( d' a d,) |
    g,16( g' d g,)  d( d' a d,)   g( g' d g,)  d( d' a d,) |
    g16( g' d g,)  d( d' a d,)  g4-> r |
  }
  \repeat volta 2 {
    r2 g'8-. g-. g-. g-. |
    g16( d g b  g d g b)  g,4 r8 b'( |
    c,8-.) c'-. b-.[ g-.]  c,-. c'-. r e( |
    f,!8-.) f'-. e-.[ c-.]  f,-. f'-. r cs( |
    d,8-.) d'-. cs-.[ a-.]  d,-. d'-. r fs,( |
    
    \barNumberCheck 25
    \stemDown g,!8-.) g'-. fs-.[ d-.]  g4->( a8-.) b-. |
    e,8-. e'-. ds-.[ b-.]  e,-. e'-. r gs,( |
    a,8) a'-. gs-.[ e-.]  a,16( a' e a,) \stemNeutral f!( f' c f,) |
    e16( e' c e,)  f( f' c f,)  e( e' c e,)  f( f' c f,) |
    e16( e' c e,)  d( d' b d,)  c8-. c'-. r e( |
    f8-.) e-. d-. c-.  g-. g'-. r b( |
    c8-.) c-. r b(  c) c-. r b( |
    c8) c-. r e,(  f) f-. r e( |
    
    \barNumberCheck 33
    f8) f'-. e-.[ c-.]  f-. ef-. d-. c-. |
    bf8-. af-. g-. f-.  e!-. d-. c-. b!-. |
    a8-. f'( g-.)[ g,-.]  c,16( c' g c,)  g'( g' d g,) |
    c16( c' g c,)  g( g' d g,)  c,( c' g c,)  g'( g' d g,) |
    c,16( c' g c,)  g'( g' d g,)  c,4-> r |
  }
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s1\f |
    s1 * 4 |
    s2. s8.\< s16\! |
    \tag layout { s2\fp } \tag midi { s16\f s4..\p } s4 
      s8.-\tweak Y-offset 1 \< s16\! |
    \tag layout { s2-\tweak Y-offset 0.5 \fp } \tag midi { s16\f s4..\p }
      s4 s8.\< s16\! |
    
    \barNumberCheck 9
    \tag layout { s2\fp } \tag midi { s16\f s4..\p } s4 s8.\< s16\! |
    \tag layout { s2\fp } \tag midi { s16\f s4..\p } s2 |
    s2.\cresc s8.\< s16\! |
    s4.\mf s8\p s2 |
    s4 s\< s\mf s16 s8.\p |
    s4 s2.\cresc |
    s1-\tweak Y-offset -1.5 \f |
    s1 |
    
    \barNumberCheck 17
    s2 s8 s4.-\tweak Y-offset 1 \p |
    s1\cresc |
    s2 s\f |
  }
  \repeat volta 2 {
    s1\f |
    s2. s8.\< s16\! |
    \tag layout { s2\fp } \tag midi { s16\ff s4..\p } s4
      s8.-\tweak Y-offset 1 \< s16\! |
    \tag layout { s2-\tweak Y-offset 0.5 \fp } \tag midi { s16\f s4..\p }
      s4 s8.\< s16\! |
    \tag layout { s2\fp } \tag midi { s16\f s4..\p } s4 s8.\< s16\! |
    
    \barNumberCheck 25
    \tag layout { s2\fp } \tag midi { s16\f s4..\p }
      s2-\tweak Y-offset 0.5 \cresc |
    s1 |
    s2 \tag layout { s2\fp } \tag midi { s16\f s4..\p } |
    s1\cresc |
    s2 s\f |
    s2 s16 s8.\p s4\cresc |
    s1 |
    s1\f |
    
    \barNumberCheck 33
    s1 * 2 |
    s2 s16 s4..\p |
    s1\cresc |
    s2 s\f |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 4 = 120
    s1 * 16 |
    
    \barNumberCheck 17
    s1 * 2 |
    \set Score.tempoHideNote = ##t
    \tempo 4 = 112 s4 \tempo 4 = 104 s2. |
  }
  \repeat volta 2 {
    \tempo 4 = 120
    s1 * 5 |
    
    \barNumberCheck 25
    s1 * 8 |
    
    \barNumberCheck 33
    s1 * 3 |
    \tag layout { s1 * 2 | }
    \tag midi {
      \alternative {
        {
          s1 |
          \tempo 4 = 112 s4 \tempo 4 = 104 s2. |
        }
        {
          s2. \tempo 4 = 108 s4 |
          \tempo 4 = 96 s4 \tempo 4 = 80 s2. |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 4 \pageBreak
  
  % page 2
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
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
