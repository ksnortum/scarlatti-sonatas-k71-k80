%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\include "globals.ily"

\header { 
  title = "Sonata in G major"
  opus = "K.75"
  source = "https://s9.imslp.org/files/imglnks/usimg/6/6a/IMSLP626934-PMLP333936-Sonata_K._75_(as_L._53).pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 0) (0.25 . 0) (0 . 0) (0 . 0))
                      ) \etc

%
% Music
%

global = {
  \time 3/4
  \key g \major
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    g''4-. 
      \tag layout { a4.(\trill } 
      \tag midi { \tuplet 3/2 { b16 a b a b a } b a }
      g16 a |
    \tuplet 3/2 { b,8 c d } g2) |
    \tupletOff
    \tuplet 3/2 { a,8( b c } e2) |
    \tuplet 3/2 { fs,8( g a } c2) |
    \tuplet 3/2 { d,8( e fs } b2) |
    \tuplet 3/2 { e,8( fs g } e'4-.) d-. |
    \tuplet 3/2 { a8( b cs } g'4-.) fs-. |
    \tuplet 3/2 { b,8( cs d } b'4-.) a-. |
    
    \barNumberCheck 9
    \tuplet 3/2 { gs,8( a b } f'4-.) e-. |
    \tuplet 3/2 { gs,8( a b } d4-.) c-. |
    \tuplet 3/2 { gs8( a b } f'4-.) e-. |
    \tuplet 3/2 { cs8( d e } bf'4-.) a-. |
    \tuplet 3/2 { cs,8( d e } g4-.) f-. |
    \tuplet 3/2 { cs8( d e } bf'4-.) a-. |
    \tuplet 3/2 { 
      g8( fs! e)  e( d cs)  cs( b a |
      g8 fs e)  e( d cs)  cs( b a) |
    }
    
    \barNumberCheck 17
    R2. |
    \tag layout { g''4.(\trill } 
      \tag midi { \tuplet 3/2 { a16 g a g a g } a g }
      fs16 e \tuplet 3/2 { fs8 e d } |
    b'8-.) d,( <a d fs>4-.) <a cs e>-. |
    <fs a d>2.-> |
  }
  \repeat volta 2 {
    d'4-. \offsetPositions #'(-1 . -1)
      \tag layout { e4.(\trill } 
      \tag midi { \tuplet 3/2 { fs16 e fs e fs e } fs e }
      d16 e |
    \tuplet 3/2 { fs8 g a } c,!2) |
    \tuplet 3/2 { b8( c d } f,2) |
    \tuplet 3/2 { e8( fs! g } e'4-.) d-. |
    
    \barNumberCheck 25
    \tuplet 3/2 { fs,8( g a } c4-.) b-. |
    \tuplet 3/2 { g'8( a b } cs,4-.) d-. |
    \tuplet 3/2 { g,8( a b } cs,4-.) d-. |
    \tuplet 3/2 { 
      c!8( d e  fs g a)  a( b c) |
      c8( d e  fs g a) a( b c) |
    }
    \tag layout { c4.-\slurShapeA (\trill } 
      \tag midi { \tuplet 3/2 { d16 c d c d c } d c }
      bf16 a \tuplet 3/2 { bf8 a g } |
    \tuplet 3/2 { fs8 g a  ef d c  bf a g } |
    \tuplet 3/2 { fs8 g a } ef'4-.) d-. |
    
    \barNumberCheck 33
    \tuplet 3/2 { fs,8( g a } c4-.) bf-. |
    \tuplet 3/2 { fs8( g a } ef'4-.) d-. |
    \tuplet 3/2 { b!8( c d } af'4-.) g-. |
    \tuplet 3/2 { b,8( c d } f4-.) ef-. |
    \tuplet 3/2 { cs8( d e! } bf'4-.) a!-. |
    \tuplet 3/2 { cs,8( d e } g4-.) fs!-. |
    \tuplet 3/2 { 
      c'!8( b a)  a( g fs)  fs( e d |
      c8 b a)  a( g fs)  fs( e d) |
    }
    
    \barNumberCheck 41
    R2. |
    \offsetPositions #'(-0.5 . 0) 
      \tag layout { c''4.(\trill } 
      \tag midi { \tuplet 3/2 { d16 c d c d c } d c }
      b16 a \tuplet 3/2 { b8 a g } |
    <e g c>4-.) <d g b>-. <d fs a>-. |
    <b d g>2.-> |
  }
}

leftHandUpper = \relative {
  \repeat volta 2 {
    s2. * 8 |
    
    \barNumberCheck 9
    \voiceThree d'4-> d-. c!-. |
    b4( f'-.) e-. |
    r4 d-. c-. |
    r4 g-. f-. |
    e4( bf'-.) a-. |
    r4 g-. f-. |
    s2. * 2 |
    
    \barNumberCheck 17
    s2. * 4 |
  }
  \repeat volta 2 {
    s2. * 4 |
    
    \barNumberCheck 25
    s2. * 7 |
    <g a c>4-> <a c>-. <g bf>-. |
    
    \barNumberCheck 33
    a4( ef'-.) d-. |
    r4 c-. bf-. |
    r4 f-. ef-. |
    r4 d-. c-. |
    r4 g'-. f-. |
    r4 e-. <d fs!>-. |
    s2. * 2 |
    
    \barNumberCheck 41
    s2. * 4 |
  }
}

leftHandLower = \relative {
  \repeat volta 2 {
    <g b d>2 <fs a d>4-. |
    <g b d>2 <b d>4-. |
    <c e>2 <a c>4-. |
    <d, a' d>2 <fs a d>4-. |
    <g b>2 <b d>4-. |
    c,4( c'4-.) <b d>-. |
    r4 <cs e>-. <d fs>-. |
    r4 <g, b d>-. <fs a d>-. |
    
    \barNumberCheck 9
    \voiceTwo e2. |
    e2. |
    e2. |
    a,2. |
    a2. |
    a2. |
    \oneVoice <a cs e>4-.-> r r|
    R2. |
    
    \barNumberCheck 17
    \tupletOff
    \tuplet 3/2 { g'8( fs e)  e( d cs)  cs( b a) } |
    <a cs e a>4-.\sustainOn <cs e a>-. <d fs a>-.\sustainOff |
    \stemDown <g, d' g>4-. <a d a'>-. <a e' a>-. |
    \stemNeutral <d, d'>2.-> |
  }
  \repeat volta 2 {
    <d' fs a>2 <cs e a>4-. |
    <d fs a>2 <fs a d>4-. |
    <g b d>2 <b d>4-. |
    c,4( c'-.) <b d>-. |
    
    \barNumberCheck 25
    r4 <a c>-. <g b>-. |
    r4 <e g cs>-. <fs a d>-. |
    r4 <g a>-. <fs a>-. |
    <e g>2 <e g c>4-. |
    <d g a c>4-. r r |
    q4-. <d fs a d>-. <d g bf d>-. |
    <d g a c>4-. <d fs a d>-. <d g bf d>-. |
    \voiceTwo d2. |
    
    \barNumberCheck 33
    d2. |
    d2. |
    g,2. |
    g2. |
    a2. |
    a2. |
    \oneVoice d4-. r r |
    R2.
    
    \barNumberCheck 41
    \tuplet 3/2 { c'8( b a)  a( g fs)  fs( e d) } |
    <d a' d>4-.\sustainOn <fs a d>-. <g b d>-.\sustainOff |
    <c, g' c>4-. <d g d'>-. <d a' d>-. |
    <g, d' g>2.-> |
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
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s2.\f |
    s2. |
    s2.\p |
    s2. * 2 |
    s4\f\> s\! s\p |
    s4\f\> s\! s\p |
    s4\f\> s\! s\p |
    
    \barNumberCheck 9
    s4\f\> s\! s\p |
    s4-\tweak Y-offset 0.5 \f-\tweak Y-offset 1 \> s\! s\p |
    s4\f\> s\! s\p |
    s2.-\tweak Y-offset -2 \f |
    s2. * 4 |
    
    \barNumberCheck 17
    s2. * 4 |
  }
  \repeat volta 2 {
    s2.\f |
    s2. * 2 |
    s4\f\> s\! s\p |
    
    \barNumberCheck 25
    s2.\p |
    s4\f \tag layout { s2\sf } \tag midi { s4\ff s\f } |
    s4 \tag layout { s2\sf } \tag midi { s4\ff s\f } |
    s4\p s2\cresc |
    s2. |
    s2.\f |
    s2. |
    s4\> s\! s\p |
    
    \barNumberCheck 33
    s4-\tweak Y-offset 0.5 \f-\tweak Y-offset 1 \> s\! s\p |
    s4\f\> s\! s\p |
    s2.\f |
    s2. * 5 |
    
    \barNumberCheck 41
    s2. * 4 |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 4 = 168
    s2. * 16 |
    
    \barNumberCheck 17
    s2. * 2 |
    \set Score.tempoHideNote = ##t
    s4 \tempo 4 = 152 s \tempo 4 = 138 s |
    s2. |
  }
  \repeat volta 2 {
    \tempo 4 = 168
    s2. * 4 |
    
    \barNumberCheck 25
    s2. * 16 |
    
    \barNumberCheck 41
    s2. * 2 |
    \tag layout { s2. * 2 | }
    \tag midi {
      \alternative {
        {
          s4 \tempo 4 = 152 s \tempo 4 = 138 s |
          s2. |
        }
        {
          \tempo 4 = 144 s4 \tempo 4 = 126 s \tempo 4 = 112 s |
          s2. |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s2. * 4 \break
  s2. * 4 \break
  s2. * 4 \break
  s2. * 4 \break
  s2. * 4 \pageBreak
  
  % page 2
  s2. * 5 \break
  s2. * 5 \break
  s2. * 4 \break
  s2. * 5 \break
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
