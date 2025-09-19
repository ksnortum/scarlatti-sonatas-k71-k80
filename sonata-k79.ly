%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\include "globals.ily"

\header { 
  title = "Sonata in G major"
  opus = "K.79"
  source = "https://s9.imslp.org/files/imglnks/usimg/f/fd/IMSLP626938-PMLP334453-Sonata_K._79_(as_L._80).pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.5 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc

%
% Music
%

global = {
  \time 3/8
  \key g \major
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    g''8-.-> g-. a-. |
    g8-.-> g-. a-. |
    g16( fs g d e c |
    d16 c d b c a |
    b8-.) d-. c-. |
    b8-. d-. c-. |
    b8( d-.) g,-. |
    fs8( d'-.) e,-. |
    
    \barNumberCheck 9
    d8( d'-.) c-. |
    b8-. d,-. c'-. |
    b8-. d,-. c'-. |
    b8( d-.) g,-. |
    fs8( d'-.) e,-. |
    d8( d'-.) c-. |
    b8-. d,-. b'-. |
    a16( g fs e d c |
    
    \barNumberCheck 17
    b8-.) d-. g-. |
    c,8( a'-.) fs-. |
    g8-. d-. b'-. |
    a16( g fs e d c |
    b8) g-. <bf g'>(^~ |
    <a g'>8) f'-. e-. |
    f8-. a-. d~ |
    d8 c-. b-. |
    
    \barNumberCheck 25
    c8-. e-. a~ |
    a8 g-. fs-. |
    g8-. a-. b~( |
    b8 a16 g fs e |
    fs8-.) g-. a(~ |
    a8 g16 fs e d |
    <cs e>8-.) a-. d-. |
    <cs e>8-. a-. d-. |
    
    \barNumberCheck 33
    <cs e>8-. a-. <e' g>( |
    <d fs>8-.) a-. <e' g>( |
    <d fs>8-.) a-. <e' g>( |
    <d fs>8-.) a-. <e' g>( |
    <d fs>8-.) a-. <d f>( |
    <cs e>8-.) a-. <d f>( |
    <cs e>8-.) a-. <d f>( |
    <cs e>8-.) a-. <d f>( |
    
    \barNumberCheck 41
    e16 d cs b a g |
    fs!16 a d fs, e cs' |
    d8-.)\noBeam <fs, a>-. <g b>( |
    <fs a>8-.) d-. <g b>( |
    <fs a>8-.) d-. <g b>( |
    <fs a>8-.) d-. \offsetPositions #'(0 . -1) <g b>( |
    a16 g fs e d fs |
    e16 g fs d e cs |
    
    \barNumberCheck 49
    d16 a fs' d a' fs |
    d'16 a fs' d a' a, |
    d4.) |
  }
  \repeat volta 2 {
    R4. * 2 |
    a8-.-> a-. b-. |
    a8-.-> a-. b-. |
    d8-.-> d-. e-. |
    
    \barNumberCheck 57
    d8-.-> d-. e-. |
    d16-\slurShapeA ( e fs d g e |
    fs16 e fs d g e |
    fs16 e d c b a |
    b8-.) g-. c-. |
    b8-. g-. c-. |
    d,-.-> d-. e-. |
    d-.-> d-. e-. |
    
    \barNumberCheck 65
    g8-.-> g-. a-. |
    g8-.-> g-. a-. |
    g16-\slurShapeB ( a b c d b |
    e16 d c b a g |
    fs8-.) d-. bf'^>(~ |
    <f bf>8-.) <e a>-. <d gs>-. |
    <c a'>8-. b'!-. \offsetPositions #'(1 . 0) c^>(^~ |
    <g c>8-.) <fs! b>-. <e as>-. |
    
    \barNumberCheck 73
    <d b'>8-. cs'-. d^>~ |
    d8 cs4( |
    d8-.) e-. f->_(~ |
    <c f>8) <b e>-. <a ds>-. |
    <g e'>8-. fs'!-. g_(~ |
    <e g>8) <d fs>-. <c e>-. |
    <b d>8-. <a c>-. <g b>-. |
    <a c>8-. <fs d'>-. <g b>-. |
    
    \barNumberCheck 81
    <fs a>8-. d'-. g,-. |
    <fs a>8-. d'-. g,-. |
    <fs a>8-. d'( c |
    <g' b>8-.) d-. <a' c>( |
    <g b>8-.) d-. <a' c>( |
    <g b>8-.) d-. <a' c>( |
    <g b>8-.) d-. <g bf>( |
    <fs a>8-.) d-. <g bf>( |
    
    \barNumberCheck 89
    <fs a>8-.) d-. <f af>( |
    <ef g>8-.) c-. <f af>( |
    <ef g>8-.) c-. <c ef>( |
    <bf d>8-.) g-. <c ef>( |
    <bf d>8-.) g-. <g bf>( |
    <fs a>8-.) d-. <g bf>( |
    a16 g fs e d c |
    d' c b! a g b |
    
    \barNumberCheck 97
    a16 c b g a fs |
    g16 d b' g d' b |
    g'16 d b d g, b |
    d,16 g b, d g, b |
    g4.) |
  }
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    R4. * 4 |
    g8-.-> g-. a-. |
    g8-.-> g-. a-. |
    g16( fs g d e c |
    d16 c d b c a |
    
    \barNumberCheck 9
    b16 a b g a fs) |
    g'8-.-> g-. a-. |
    g8-.-> g-. a-. |
    g16( fs g d e c |
    d16 c d b c a |
    b16 a b g a fs |
    g8. a16 b c |
    d8-.) e-. fs-. |
    
    \barNumberCheck 17
    g8-. g,-. b'-. |
    a16( g fs e d c |
    b8-.) g16( a b c |
    d8-.) d,-. d-. |
    g4.-> |
    r8 d''-. cs-. |
    d8-. r \clef treble f( |
    e8) a-. gs-. |
    
    \barNumberCheck 25
    a8-. r c( |
    b8) e-. ds-. |
    e8-. r d!( |
    cs4. |
    d4) cs8( |
    b4.) |
    \clef bass a,8-. a-. b-. |
    a8-. a-. b-. |
    
    \barNumberCheck 33
    a8-. a16( b cs a |
    d8-.) r16 d( cs a |
    d,8-.) r16 d'( cs a |
    d,8-.) r16 d'( cs a |
    d,8-.) r16 a'( gs e |
    a,8-.) r16 \offsetPositions #'(0 . 2.5) a'( gs e |
    a,8-.) r16 \offsetPositions #'(0 . 2.5) a'( gs e |
    a,8-.) r16 a'( gs e |
    
    \barNumberCheck 41
    a,8-.) b-. cs-. |
    d8-. g( a) |
    d,,8 r16 d'( cs a |
    d,8) r16 d'( cs a |
    d,8) r16 d'( cs a |
    d,8) r16 \offsetPositions #'(0 . -1) d'( cs a |
    d8-.) e-. fs-. |
    g8( a-.) a, |
    
    \barNumberCheck 49
    d,4.-> |
    d4.-> |
    d4.-> |
  }
  \repeat volta 2 {
    d''8-.-> d-. e-. |
    d8-.-> d-. e-. |
    d16( e fs d g e |
    fs16 e fs d g e |
    fs16 e fs d g e |
    
    \barNumberCheck 57
    fs16 e fs d g e |
    fs8-.) fs( e |
    d8) d( e |
    d8 e fs |
    g,8-.) g-. a-. |
    g8-.-> g-. a-. |
    g16( a b g c a |
    b16 a b g c a |
    
    \barNumberCheck 65
    b16 a b g c a |
    b16 a b g c a |
    b8-.) a-. g-. |
    c8-. c,-. c'-. |
    d4. |
    \override Parentheses.font-size = #-1
    \startParenthesis \parenthesize d8-. c-. b!-. |
    \endParenthesis \parenthesize a8-. r r |
    \startParenthesis \parenthesize e'8-. d-. cs |
    
    \barNumberCheck 73
    \endParenthesis \parenthesize b8-. r r |
    \clef treble bf'8-. a-. g-. |
    f8-. r r |
    \startParenthesis \parenthesize a8-. g-. fs!-. |
    \endParenthesis \parenthesize e8-. r r |
    R4. * 3 |
    
    \barNumberCheck 81
    \clef bass d8-.-> d-. e-. |
    d8-.-> d-. e-. |
    d8-. d16( e fs d |
    g8-.) r16 g( fs d |
    g,8-.) r16 g'( fs d |
    g,8-.) r16 g'( fs d |
    g,8-.) r16 d'( cs a |
    d,8-.) r16 d'( cs a |
    
    \barNumberCheck 89
    d,8-.) r16 \offsetPositions #'(0 . 2.5) c'!( b! g |
    c,8-.) r16 \offsetPositions #'(0 . 2.5) c'( b g |
    c,8-.) r16 \offsetPositions #'(0 . 2.5) g'( fs! d |
    g,8-.) r16 \offsetPositions #'(0 . 2.5) g'( fs d |
    g,8-.) r16 d'( cs a |
    d,8-.) r16 d'( cs a |
    d,8-.) e-. fs-. |
    g8-. a-. b-. |
    
    \barNumberCheck 97
    c8( d-.) d,-. |
    g4.-> |
    g4.-> |
    g4.-> |
    g4.-> |
  }
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s4.\f |
    s4. * 7 |
    
    \barNumberCheck 9
    s4. * 8 |
    
    \barNumberCheck 17
    s4. * 5 |
    s8 s4-\tweak Y-offset 0 \p |
    s4 s8\f |
    s8 s4\p |
    
    \barNumberCheck 25
    s4 s8\f |
    s8 s4\p |
    s4 s8\f |
    s8 s4\p |
    s4 s8\f |
    s8 s4\p |
    s4.\f |
    s4. |
    
    \barNumberCheck 33
    s4. |
    s8 s4\p |
    s4. * 2 |
    s4 s8\f |
    s8 s4\p |
    s4.\cresc |
    s4. |
    
    \barNumberCheck 41
    s4.\f |
    s4. |
    s8 s4\p |
    s4.\cresc |
    s4. * 2 |
    s4.\f |
    s4. |
    
    \barNumberCheck 49
    s4. * 3 |
  }
  \repeat volta 2 {
    s4.\f |
    s4. * 4 |
    
    \barNumberCheck 57
    s4. * 8 |
    
    \barNumberCheck 65
    s4. * 5 |
    s4.-\tweak Y-offset 0.5 \p |
    s4 s8\f |
    s4.-\tweak Y-offset 0.5 \p |
    
    \barNumberCheck 73
    s4 s8\f |
    s4. |
    s4\p s8\f |
    s4.\p |
    s4 s8\f\> |
    s8 s4\p |
    s4. * 2 |
    
    \barNumberCheck 81
    s4.-\tweak Y-offset 1 \f |
    s4. * 2 |
    s8 s4-\tweak Y-offset 1 \mf |
    s4. * 2 |
    s4 s8-\tweak Y-offset 1 \f |
    s8 s4-\tweak Y-offset 0.5 \mf |
    
    \barNumberCheck 89
    s4 s8-\tweak Y-offset 1 \f |
    s8 s4-\tweak Y-offset 0.5 \mf |
    s4 s8-\tweak Y-offset 0 \f |
    s8 s4-\tweak Y-offset -1 \mf |
    s4 s8-\tweak Y-offset 0.5 \f |
    s8 s4\mf |
    s4.\cresc |
    s4. |
    
    \barNumberCheck 97
    s4. |
    s4.\f |
    s4. * 3 |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegrissimo" 4. = 92
    s4. * 48 |
    
    \barNumberCheck 49
    s4. |
    \set Score.tempoHideNote = ##t
    s8 \tempo 4. = 84 s \tempo 4. = 76 s |
    \tempo 4. = 69 s4. |
  }
  \repeat volta 2 {
    \tempo 4. = 92
    s4. * 5 |
    
    \barNumberCheck 57
    s4. * 40 |
    
    \barNumberCheck 97
    s4. * 3 |
    \tag layout { s4. * 2 | }
    \tag midi {
      \alternative {
        {
          s8 \tempo 4. = 84 s \tempo 4. = 76 s |
          \tempo 4. = 69 s4. |
        }
        {
          \tempo 4. = 80 s8 \tempo 4. = 69 s \tempo 4. = 60 s |
          \tempo 4. = 50 s4. |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s4. * 7 \break
  s4. * 7 \break
  s4. * 7 \break
  s4. * 8 \break
  s4. * 8 \break
  s4. * 7 \break
  s4. * 7 \pageBreak
  
  % page 2
  s4. * 8 \break
  s4. * 8 \break
  s4. * 9 \break
  s4. * 9 \break
  s4. * 8 \break
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
