%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\include "globals.ily"

\header { 
  title = "Sonata in G major"
  opus = "K.71"
  source = "https://vmirror.imslp.org/files/imglnks/usimg/4/41/IMSLP626930-PMLP333872-Sonata_K._71_(as_L._81).pdf"
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

%
% Music
%

global = {
  \time 4/4
  \key g \major
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    r8 g'-. b-. d-.  g16( a b c  b a g fs |
    g4) r8 d-.  b16-\slurShapeA ( c d e  d c b a |
    d4) r8 fs,8-.  g16( d cs d  fs d cs d |
    a'4) r8 a-.  b16( g fs g  c a b g |
    a16 fs g e fs d e cs)  d'( fs, g e  fs d e cs) |
    d'16( fs, g e  fs d e cs)  f'( d e cs  d a bf a) |
    \stemDown f'16( d e cs  d a bf g)  f'( d e cs  d a bf g) |
    bf'16( g a f  g e fs d  cs e d fs  e4) |
    
    \barNumberCheck 9
    r8 f8-. g-. a-.  cs,( d) g-. a-. |
    r8 f-. g-. a-.  <cs, e>( <d fs>) <e g>-. <fs a>-. |
    <e g>4 r8 e-.  a16-\slurShapeB ( fs g e  fs d e cs |
    \stemNeutral d16) fs,( g e  fs d e cs)  d'( fs, g e  fs d e cs) |
    d'16( fs, g e  fs d' e, cs'  d a fs a  d fs a, d |
    fs,16 a d, fs) r4 r2 |
  }
  \repeat volta 2 {
    r8 d-. fs-. a-.  d16( e fs g  fs e d cs |
    d4) r8 e-.  fs16( g a b  a g fs e |
    
    \barNumberCheck 17
    d4) r8 e-.  fs16( d gs e  a fs b gs |
    c16 e, f d  e c d b)  c'( e, f d  f c d b) |
    c'16( e, f d  e c d b)  c'( e, d b'  c, a' b, gs' |
    a16 fs! g! e  fs d e cs  d16) fs,( g e  fs d e cs |
    d4) r8 g-.  fs( g) a-. b-. |
    <a fs'>8( <b g'>) <c a'>-. <d b'>-.  <a fs'>( <b g'>) <c a'>-. <d b'>-. |
    <d a' c>8. q16-.  <d g b>8. q16-.  a'16( fs g e  fs d) c'( a |
    bf16 fs g d  ef c) c'( a  bf fs g d  ef c) c'( a |
    
    \barNumberCheck 25
    bf16 g a fs  g d e! c  d b! c a  b g a e |
    fs16 d fs a  d b c a  b g c a  b g a fs) |
    g'16( b, c a  b g a fs)  g'( b, c a  b g a fs) |
    g'16( b, c a  b g' a, fs'  g d b d  g, b d, g |
    b16 d g, b) r4 r2 |
  }
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    g4 r r8 g,-. b-. d-. |
    g16( a b c  b a g fs  g4) r8 d'-. |
    b16( c d e  d c b a  b8-.) b-. a-. g-. |
    fs16( g fs e  d c! b a  g8-.) g'-. fs-. g-. |
    d4 r8 a-. d4 r8 a-. |
    d4 r8 a-. d4 r |
    <d g bf>4 r <d g a d>\arpeggio r8 d-. |
    <g, g'>4 r8 q  <a a'>4 e'16_( cs d b! |
    
    \barNumberCheck 9
    cs16 a d a e' a, f' a,  g' a, f' a,  e' a, d a |
    g'16 a, f'  a, e' a, d a  g' a, fs' a, e' a, d a |
    cs16 e b e a, e' g, e'  fs8-.) g-. a-.[ a,-.] |
    d4 r8 a-. d4 r8 a-. |
    d8-. g-. a-. a,-.  d4 r |
    r4 a16( d fs, a  d,4) r |
  }
  \repeat volta 2 {
    d'4 r r8 d-. fs-. a-. |
    d16( e fs g  fs e d cs  d4) r8 e-. |
    
    \barNumberCheck 17
    fs,16( g a b  a g fs e  d8-.) e-. fs-. gs-. |
    a4 r8 gs-. a4 r8 gs-. |
    a4 r8 gs-.  a-. d,-. e-.[ e,-.] |
    a4 r8 g'!(  fs-.) g-. a-. g-. |
    fs16( d g d  a' d, b' d,  c' d, b' d,  a' d, g d |
    c'16 d, b' d, a' d, g d  c' d, b' d, a' d, g d |
    \stemDown fs16 d fs d  g g, b g  d'4) r8 fs-. |
    g4 r8 fs-. g4 r8 fs-. |
    
    \barNumberCheck 25
    \stemNeutral g,8-. a-. b!-. c-.  b-. a-. g-. c-. |
    d4 r8 fs-.  g8( c d-.) d,-. |
    g4 r8 d-.  g4 r8 d-. |
    g8-. c,-. d-.[ d,-.]  g4 r |
    r4 d'16( g b, d  g,4) r |
  }
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s1\f |
    s4. \tag layout { s8\sf } \tag midi { s8\ff } s2\p |
    s2 s\< |
    s16 s4..\p s2\cresc |
    s1\f |
    s1 * 3 |
    
    \barNumberCheck 9
    \override DynamicText.Y-offset = 0.5
    s16 s4..\p \tag layout { s2\sf } \tag midi { s16\f s4..\p } |
    s2 \tag layout { s\sf } \tag midi { s16\f s4..\p } |
    s2-\tweak Y-offset 0.5 \cresc s\f |
    \override DynamicText.Y-offset = -0.5
    s4\p s2.\cresc |
    s2 s\f |
    s1 |
  }
  \repeat volta 2 {
    s1\p |
    s1 |
    
    \barNumberCheck 17
    s2 s\cresc |
    s4.\f\> s8\p s2 |
    s2\cresc s\f |
    s4. \tag layout { s8\sf } \tag midi { s8\ff } s16 s4..\p |
    s4. s8\cresc s2 |
    s1 |
    s1\f |
    s4. s8\p s4. s8\f |
    
    \barNumberCheck 25
    s1 * 5 |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 4 = 138
    s1 * 8 |
    
    \barNumberCheck 9
    s1 * 5 |
    \tempo 4 = 126 s4 \tempo 4 = 116 s2. |
  }
  \repeat volta 2 {
    \tempo 4 = 138
    s1 * 2 |
    
    \barNumberCheck 17
    s1 * 8 |
    
    \barNumberCheck 25
    s1 * 3 |
    \tag layout { s1 * 2 | }
    \tag midi {
      \alternative {
        {
          s1 |
          \tempo 4 = 126 s4 \tempo 4 = 116 s2. |
        }
        {
          s2.  \tempo 4 = 120 s4 |
          \tempo 4 = 108 s4 \tempo 4 = 96 s \tempo 4 = 80 s2 |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s1 * 2 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \pageBreak
  
  % page 2
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
  s1 * 3 \break
}

\score {
  \keepWithTag layout  
  \new PianoStaff \with {
    \override StaffGrouper.staff-staff-spacing = 
      #'((basic-distance . 10)
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
