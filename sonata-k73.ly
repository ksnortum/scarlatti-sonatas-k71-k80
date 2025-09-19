%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\include "globals.ily"

\header { 
  title = "Sonata in C minor"
  opus = "K.73"
  source = "https://s9.imslp.org/files/imglnks/usimg/1/10/IMSLP626932-PMLP333900-Sonata_K._73_(as_L._217).pdf"
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
                        ((0 . 0) (0 . 0) (0 . 1) (0 . -1))
                      ) \etc

%
% Music
%

global = {
  \time 3/4
  \key c \minor
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    c''8( g ef'4-.) d-. |
    c8(\prall b) c4-. g'( |
    f8 d ef g af c, |
    b8 c16 d g,4-.) f'( |
    e8 c bf!4) f'( |
    e8 c bf4. af16 g |
    af8 f f'4-.) ef4( |
    d8 bf af4) ef'-\slurShapeB ( |
    
    \barNumberCheck 9
    d8 bf af4. g16 f |
    g8 c f, d' g, ef' |
    b8) d16( c  d8 g c, af' |
    b,8) d16( c  d8 g c, af') |
    e8( f16 e  f8 c)  e( f16 e |
    f8 c)  e( f16 d  f8 c) |
    f8( ef!16 d  ef8 c)  f( ef16 d
    ef8 c)  f8( ef16 d  ef8 f16 g |
    
    \barNumberCheck 17
    af8 c,) b4(  c8.\trill b32 c |
    d16)( g f ef  d c b a  g f ef d |
    ef16 c' bf! af!  g f ef d)  c'( ef d c |
    d16 g f ef  d c b a  g fs e d |
    g4) r r |
  }
  \repeat volta 2 {
    g'8( d bf'4-.) a-. |
    g8(\prall fs) g4-- d( |
    c8 ef! fs a4 c,8 |
    
    \barNumberCheck 25
    bf8 d g4-.) f!-- |
    bf,8( df e g4 bf,8 |
    af!8 c f4-.) ef!-- |
    af,8( bf d f4 af,8 |
    g8 bf ef) f16( ef  f8 bf, |
    ef8) f16( ef  f8 bf, g'[ bf,] |
    af'4.) g16( f  bf8 ef, |
    c'8 ef, g4-.) f-.\prall |
    
    \barNumberCheck 33
    ef8-. g16( f g4) g,( |
    af8-.) f'16( e f4) a,( |
    bf8-.) f'16( e f4) a,( |
    bf8-.) g'16( f g4) b,4( |
    \stemDown c8 g)  f'8( ef16 d  ef8 d16 c |
    af'8 g f ef d c |
    \stemNeutral b8) g( f4.) c'8( |
    b8 g)  b8( c16 b  c8 g) |
    
    \barNumberCheck 41
    \stemDown b8( c16 b  c8) g16( b  c8 b |
    \stemNeutral c8 g)  bf'!( af16 g  af8 f) |
    bf8( af16 g  af8 f)  bf( af16 g |
    af8 g16 f  g8 f16 ef  f8 ef16 d |
    ef8 d16 c  d8 c16 d  g,8-.) f'( |
    ef8 d16 ef  d8 c16 d  g,8-.) \offsetPositions #'(-1 . 0) b( |
    c16 g' f ef  d c b a  g f ef d |
    ef16 c' bf! af!  g f ef d  c bf! af! g |
    
    \barNumberCheck 49
    c2.) |
  }
  \key c \major
  \time 3/8
  \repeat volta 2 {
    c'16( e g4) |
    a,16( b c4) |
    b16( d f4) |
    g,16( a b4) |
    a16( c e4) |
    f,16( g a4) |
    g16( b d4) |
    
    \barNumberCheck 57
    e,16( g c4) |
    a16( c f4) |
    d8( c16 b g'8-.) |
    f16( e d c d b |
    c4.) |
  }
  \repeat volta 2 {
    c16( e g4) |
    fs16( a c,4) |
    c16( ef g4) |
    
    \barNumberCheck 65
    fs16( a c,4) |
    c16( e! d c b a |
    b16 c d b a g |
    e'16 g, b8-.) a-.\prall |
    g16( b d4) |
    g,16( c ef4) |
    f,16( b d4) |
    ef,16( g c4) |
    
    \barNumberCheck 73
    b16( d g4) |
    f,16( b d4) |
    e,16( g c g g'8-.)\noBeam |
    f16( e d c d b |
    c4.) |
  }
  \key c \minor
  \repeat volta 2 {
    c16-.( d32 ef c8-.[) b-.] |
    c16( d32 ef g,8-.[) af-.] |
    b16( c32 d f,8-.[) g8-.] |
    
    \barNumberCheck 81
    c16( d32 ef g,8-.[) af-.] |
    d16( ef32 f b,8-.[) c-.] |
    f16( g32 af b,8-.[) c-.] |
    g16( fs32 g  f'!16[ ef32 d]  ef16 d32 c |
    d4.) |
  }
  \repeat volta 2 {
    g16( af32 bf g8-.[) f-.] |
    e16( f32 g df8-.[) c-.] |
    bf16( c32 df gf,8-.[) f-.] |
    
    \barNumberCheck 89
    e16( f32 g! b8-.[) c-.] |
    f,16( g32 af c8-.[) d!-.] |
    g,16( a32 b d8-.[) ef-.] |
    af!16( bf!32 c  f,16[ g32 af]  d,16 ef32 f |
    b,16 c32 d  g,16[ fs32 g]  f'!16 ef32 d |
    ef16 d32 c d,8-.[) b'-.] |
    \override Parentheses.font-size = #-1
    <\parenthesize ef, c'>4. |
  }
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    c4 r8 c'( b g |
    af4) r8 f( ef c |
    d8 b c ef f, f' |
    g4) r8 g,-\slurShapeA ( a b |
    c4) r8 c'( df bf! |
    c4) r8 c,( d e |
    f4) r8 f( g af |
    bf4) r8 bf( c af |
    
    \barNumberCheck 9
    bf4) r8 bf,( c d |
    ef4 d c |
    g'4) r8 g( af f |
    g4) r8 g( af f) |
    <g bf>4( <af c>) <g bf>( |
    <af c>4) <g bf>( <af c>) |
    <b, g'>4( <c g'>) <b g'>( |
    <c g'>4) <b g'>( <c g'> |
    
    \barNumberCheck 17
    <f, f'>4) <g g'>( <af af'> |
    <g g'>4) r r |
    q4 r r |
    g4 r r |
    g4 r r |
  }
  \repeat volta 2 {
    g4 r8 g'( fs d |
    g4) r8 c( bf g |
    a4 c, d |
    
    \barNumberCheck 25
    g,4) r8 g'( a b |
    c4 c, e |
    f4) r8 f( g af |
    bf4 bf, d |
    ef4) r8 ef( d bf |
    g'4 f ef |
    d8 ef16 f bf,4) \offsetPositions #'(2 . 0) g( |
    af8 af' bf4-.) bf,-. |
    
    \barNumberCheck 33
    ef4 r8 c( d ef |
    f4) r8 f( ef ef, |
    d4) r8 d'( ef f |
    g4) r8 g( f d |
    ef4 d c |
    f4 g, af |
    g4) r8 g'( af f |
    g4) <d f>( <ef g>) |
    
    \barNumberCheck 41
    <d f>4( <ef g> <d f> |
    <ef g>4) <e c'>( <f c'>) |
    <e c'>4( <f c'>) <e c'>( |
    <f c'>4) <b d>( <g d'> |
    <c, c'>4) <f c'>( <g b>) |
    <c, c'>4 <f, f'>( <g g'>-.) |
    <c, c'>4 r r |
    q4 r r |
    
    \barNumberCheck 49
    c2. |
  }
  \key c \major
  \time 3/8
  \repeat volta 2 {
    \offsetPositions #'(-1 . 0) c''4( e8 |
    f4 e8 |
    d4 b8 |
    e4 d8 |
    c4 a8 |
    d4 c8 |
    b4 g8 |
    
    \barNumberCheck 57
    c4 c,8 |
    f4 c8 |
    g8) g'( e |
    f8 g g, |
    c4.) |
  }
  \repeat volta 2 {
    c4_( c'8 |
    d4 d,8 |
    ef4 c8 |
    
    \barNumberCheck 65
    d4 e!8 |
    fs8 d fs |
    g4 b,8 |
    c8 d-.) d,-. |
    g4 d''8( |
    ef4) ef8( |
    b4) b8( |
    c4) c8( |
    
    \barNumberCheck 73
    g4) \offsetPositions #'(0 . 2.5) g8( |
    g,4) g8( |
    c4 e8-.) |
    f8( g g, |
    c4.) |
  }
  \key c \minor
  \repeat volta 2 {
    c4 d8-. |
    ef4 f8-. |
    d4 ef8-. |
    
    \barNumberCheck 81
    c4 f8-. |
    d4 ef8-. |
    d4 ef8-. |
    ef8( d c |
    g'4.) |
  }
  \repeat volta 2 {
    g,4 bf8-. |
    c4 c8-. |
    df4 df8-. |
    
    \barNumberCheck 89
    c4 c8-. |
    d!4 d8-. |
    ef4 ef8-. |
    f8( f, f' |
    g8-.) g,-. b'( |
    c8 f,-.) g-. |
    c,4. |
  }
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s2.\f |
    s2. * 2 |
    s2 s4\mf |
    s4. s\p |
    s2. |
    s2 s4\mf |
    s4. s\p |
    
    \barNumberCheck 9
    s2. |
    s2\< s8 s\! |
    s2.\f |
    s2. |
    s2.\p |
    s2. |
    s4.\mf\> s8\! s4\> |
    s8 s\! s2\f |
    
    \barNumberCheck 17
    s2. * 5 |
  }
  \repeat volta 2 {
    s2.\f |
    s2 s4-\tweak Y-offset 0.5 \mf |
    s2. |
    
    \barNumberCheck 25
    s2. |
    s4\< \tag layout { s8\> } \tag midi { s\f\> } s4 s8\! |
    s2. |
    s4\< \tag layout { s8\> } \tag midi { s\f\> } s4 s8\! |
    s2. |
    s2\< s8 s\! |
    s2.\f |
    s2. |
    
    \barNumberCheck 33
    s2 s4\mf |
    s2. * 3 |
    s4 s2\f |
    s2. |
    s4. s\mf |
    s4 s2\p |
    
    \barNumberCheck 41
    s2. |
    s4 s2\mf |
    s2 s4\f |
    s2. * 5 |
    
    \barNumberCheck 49
    s2. |
  }
  % Minuetto
  \repeat volta 2 {
    s4.\p |
    s4. * 6 |
    
    \barNumberCheck 57
    s4. * 2 |
    s4.\mf |
    s4.\p |
    s4. |
  }
  \repeat volta 2 {
    s4.\mf |
    s4. |
    s4.\p |
    
    \barNumberCheck 65
    s4. |
    s4.\cresc |
    s4. |
    s4.\mf |
    s4. |
    s4.-\tweak Y-offset 1 \p |
    s4. * 2 |
    
    \barNumberCheck 73
    s4. * 2 |
    s4.\mf |
    s4.\p |
    s4. |
  }
  % Più mossos
  \repeat volta 2 {
    s4.\f |
    s4. * 2 |
    
    \barNumberCheck 81
    s4. * 5 |
  }
  \repeat volta 2 {
    s4.\f |
    s4. * 2 |
    
    \barNumberCheck 89
    s4. * 7 |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 4 = 152
    s2. * 16 |
    
    \barNumberCheck 17
    s2. * 3 |
    \set Score.tempoHideNote = ##t
    s4 \tempo 4 = 138 s \tempo 4 = 126 s |
    s2.
  }
  \repeat volta 2 {
    \tempo 4 = 152
    s2. * 3 |
    
    \barNumberCheck 25
    s2. * 16 |
    
    \barNumberCheck 41
    s2. * 7 |
    s4 \tempo 4 = 138 s \tempo 4 = 126 s |
    
    \barNumberCheck 49
    s2. |
  }
  \repeat volta 2 {
    \set Score.tempoHideNote = ##f
    \tempo "Minuetto" 8 = 138
    s4. * 7 |
    
    \barNumberCheck 57
    s4. * 5 |
  }
  \repeat volta 2 {
    s4. * 3 |
    
    \barNumberCheck 65
    s4. * 8 |
    
    \barNumberCheck 73
    s4. * 3 |
    \tag layout { s4. * 2 | }
    \tag midi {
      \alternative {
        { s4. * 2 | }
        {
          s8 \tempo 8 = 126 s \tempo 8 = 116 s |
          s4. |
        }
      }
    }
  }
  \repeat volta 2 {
    \tempo "(Più Mosso)" 8 = 152
    s4. * 3 |
    
    \barNumberCheck 81
    s4. * 5 |
  }
  \repeat volta 2 {
    \set Score.tempoHideNote = ##t
    \tempo 8 = 152
    s4. * 3 |
    
    \barNumberCheck 89
    s4. * 5 |
    \tag layout { s4. * 2 | }
    \tag midi {
      \alternative {
        {
          s8 \tempo 8 = 138 s \tempo 8 = 126 s |
          s4. |
        }
        {
          \tempo 8 = 132 s8 \tempo 8 = 116 s \tempo 8 = 104 s |
          \tempo 8 = 92 s4. |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s2. * 4 \break
  s2. * 5 \break
  s2. * 4 \break
  s2. * 4 \break
  s2. * 4 \break
  s2. * 4 \pageBreak
  
  % page 2
  s2. * 4 \break
  s2. * 4 \break
  s2. * 4 \break
  s2. * 4 \break
  s2. * 4 \break
  s2. * 4 \pageBreak
  
  % page 3
  s4. * 10 \break
  s4. * 9 \break
  s4. * 9 \break
  s4. * 6 \break
  s4. * 6 \break
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
