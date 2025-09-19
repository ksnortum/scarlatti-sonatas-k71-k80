%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\include "globals.ily"

\header { 
  title = "Sonata in F major"
  opus = "K.78"
  source = "https://vmirror.imslp.org/files/imglnks/usimg/e/ea/IMSLP626937-PMLP334438-Sonata_K._78_(as_L._75).pdf"
}

global = {
  \time 2/4
  \key f \major
}

rightHand = \relative {
  \global
  \mark "Giga"
  \repeat volta 2 {
    f''4-> a-> |
    \tuplet 3/2 4 { g8( f e)  e( d c) } |
    \tupletOff
    \tuplet 3/2 { \offsetPositions #'(0 . -1) c8( bf a  bf g' bf,) } |
    \grace { bf16( } \afterGrace 15/16 { \offsetPositions #'(-1 . 0)
      bf4)(\trill } { a16[ bf] } a4-.) |
    \tuplet 3/2 { 
      f8( a f  a c a |
      c8 e c  e g e |
      f8 d a  b d f) |
    }
    \grace { f16( } \afterGrace 15/16 { \offsetPositions #'(0 . 1)
      f4)(\trill } { e16[ f] } e4-.) |
    
    \barNumberCheck 9
    \tuplet 3/2 { 
      c16( d e f g8-.)  e-. c-. g-. |
      d'16( e f g a8-.)  f-. d-. a-. |
      f'8( d g,  e' c g |
      d'8 b g  e' c g |
      f'8 d g,  e' c g |
      d'8 b g)  g'16( f e d c8-.) |
      a'8( b c)  d,( c') b-. |
      c8( g) e-.  c( g) e-. |
    }
    
    \barNumberCheck 17
    R2 * 2 |
  }
  \repeat volta 2 {
    g'4-> a-> |
    \tuplet 3/2 { 
      g8( f e)  e( d c-.) |
      c8( bf! a  bf g' bf,) |
    }
    \grace { bf16( } \afterGrace 15/16 { \offsetPositions #'(-1 . 0)
      bf4)(\trill } { a16[ bf] } a4-.) |
    \tuplet 3/2 { 
      a8( f a  c a c |
      d8 e f)  f( g a |
      
      \barNumberCheck 25
      bf8 a g  f e d |
      cs8 b a)  a'( f a, |
      g'8 e a,  f' d a |
      e'8 cs a  f' d a |
      e'8 cs a  \stemDown d a f |
      cs'8 b a)  d16( e fs g a8-.) |
      bf,!8( d g  a, c fs) |
      g,16( a bf c d8-.)  c( e g |
      
      \barNumberCheck 33
      a,8 c f  g, c e) |
      \stemNeutral f,16( g a bf c8-.)  f( bf, f |
      e' a, f  d' bf f) |
      c'16( d e f g8-.)  a( f c |
      g'8 e bf  f' c a) |
      e'16( f g a bf8-.)  c( a c, |
      bf'8 g c,  a' f c |
      g'8 f e)  f16( e d c bf a |
      
      \barNumberCheck 41
      d8) e-. f-.  g,( f') e-. |
      f8( c') a-.  f( c) a-. |
    }
    R2 * 2 |
  }
  \mark "Minuetto"
  \time 3/8 
  \repeat volta 2 {
    f'16( g a8) g-. |
    a,8( c) f-. |
    a16( bf c8) bf-. |
    c,8-. e( f) |
    
    \barNumberCheck 49
    bf,8-. f'( g) |
    a,8-. g'( a |
    c8 bf16 a g f |
    g4.) |
  }
  \repeat volta 2 {
    e16( f g8) f-. |
    g,( bf) e-. |
    g16( a bf8) a-. |
    c,8-. e( f) |
    
    \barNumberCheck 57
    bf,8-. e( g) |
    a,8( c) c'-. |
    a8( g16 f g e |
    f4.) |
  }
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    f4-> f, |
    c'4-> r |
    <e g>4( <c c'>) |
    \tupletOff \tuplet 3/2 { f8( e f } f,4-.) |
    r4 <f' a>( |
    <e g>4 <c c'>) |
    <d d'>4 <g, g'> |
    \tuplet 3/2 { c'8( b c } c,4-.) |
    
    \barNumberCheck 9
    g'2 |
    f2 |
    \grace { g16( } g2)~\startTrillSpan |
    g2 |
    \grace { g,16(\stopTrillSpan } g2)~\startTrillSpan |
    g4 <e' c'>\stopTrillSpan |
    <f c'>4 \tuplet 3/2 { g8( f) g-. } |
    c,4 r |
    
    \barNumberCheck 17
    \tuplet 3/2 { c'8( g) e-.  c( g) e-. } |
    c4-> r |
  }
  \repeat volta 2 {
    <c' c'>4-> <f c'>-> |
    <e g>4( <c c'> |
    <e g>4 <c c'>) |
    \tuplet 3/2 { f8( e f } f,4-.) |
    r4 <f' a>( |
    <bf, bf'>4) <a a'>( |
    
    \barNumberCheck 25
    <g g'>4 <gs gs'> |
    <a a'>4) <a a'> |
    <a a'>4 <a a'> |
    <a a'>4 <a a'> |
    <a a'>4 <a a'> |
    <a a'>4 <fs fs'> |
    <g g'>4 <d d'> |
    <g g'>4 <e' c'>( |
    
    \barNumberCheck 33
    <f c'>4 <c c'> |
    f4) <d d'>( |
    <c c'>4 <bf bf'> |
    <a a'>4) <f' a>( |
    <e c'>4 <f c'> |
    <c c'>4) <f c'> |
    \grace { c16( } c2)~\startTrillSpan |
    c4 <a a'>(\stopTrillSpan |
    
    \barNumberCheck 41
    <bf bf'>4) <c c'> |
    <f, f'>4 r |
    \tuplet 3/2 { f''8( c) a-.  f( c) a-. } |
    f4-> r |
  }
  \time 3/8
  \repeat volta 2 {
    f'4 c8-. |
    f,4. |
    f'4 c8-. |
    \offsetPositions #'(2.5 . 0) a4( a'8) |
    
    \barNumberCheck 49
    \offsetPositions #'(2.5 . 0) g,4( g'8) |
    f,4_( f'8 |
    a,4 bf8 |
    c4.) |
  }
  \repeat volta 2 {
    \offsetPositions #'(2.5 . 0) c4( d8 |
    e4.) |
    \offsetPositions #'(0 . 1.5) e4( f8 |
    bf,4.) |
    
    \barNumberCheck 57
    \offsetPositions #'(2.5 . 0) c4.( |
    f4) f,8-. |
    \stemDown f'8( bf, c |
    f4.) |
  }
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s2\f |
    s2 * 2 |
    \tag layout { s2 } \tag midi { s4\mf s\f } |
    s4\p s\cresc |
    s2 |
    s2\f |
    \tag layout { s2 } \tag midi { s4\mf s\f } |
    
    \barNumberCheck 9
    s4\f s\p |
    s4-\tweak Y-offset -2 \f s-\tweak Y-offset -2 \p |
    s4\p s\cresc |
    s2 |
    s4\f s\dim |
    s4\p s\f |
    s2 * 2 |
    
    \barNumberCheck 17
    s2 * 2 |
  }
  \repeat volta 2 {
    s2-\tweak Y-offset 0.5 \f |
    s2 * 2 |
    \tag layout { s2 } \tag midi { s4\mf s\f } |
    s4\p s\cresc |
    s2 |
    
    \barNumberCheck 25
    s2\f\> |
    \tuplet 3/2 { s4 s8\! } \tag layout { s4\sf }
      \tag midi { \tuplet 3/2 { s8\fff s4\f } } |
    s2 |
    \tuplet 3/2 { s4 s8\! } \tag layout { s4\sf }
      \tag midi { \tuplet 3/2 { s8\fff s4\f } } |
    s2 |
    s4 s\f |
    s2\p |
    s4-\tweak Y-offset -1 \f s-\tweak Y-offset -1 \p |
    
    \barNumberCheck 33
    s2 |
    s4\f s\p |
    s2 |
    s4\f s\p |
    s2 |
    s4\f s\p |
    s2-\tweak Y-offset 1 \cresc |
    s4 s-\tweak Y-offset 0.5 \f |
    
    \barNumberCheck 41
    s2 * 4 |
  }
  \time 3/8
  \repeat volta 2 {
    s4.\p |
    s4. * 2 |
    s4.\cresc |
    
    \barNumberCheck 49
    s4. |
    s4.\mf |
    s8 s4\> |
    s4.\p |
  }
  \repeat volta 2 {
    s4.\p |
    s4. |
    s4.\mf |
    s4.\cresc |
    
    \barNumberCheck 57
    s4. |
    s4\f s8\p |
    s8 s4^\rall |
    s4. |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 4 = 132
    s2 * 16 |
    
    \barNumberCheck 17
    \set Score.tempoHideNote = ##t
    s4 \tempo 4 = 120 s |
    \tempo 4 = 112 s2 |
  }
  \repeat volta 2 {
    \tempo 4 = 132
    s2 * 6 |
    
    \barNumberCheck 25
    s2 * 16 |
    
    \barNumberCheck 41
    s2 * 2 |
    \tag layout { s2 * 2 | }
    \tag midi {
      \alternative {
        {
          s4 \tempo 4 = 120 s |
          \tempo 4 = 112 s2 |
        }
        {
          \tempo 4 = 116 s4 \tempo 4 = 104 s |
          \tempo 4 = 92 s2 |
        }
      }
    }
  }
  \time 3/8
  \repeat volta 2 {
    \tempo 8 = 132
    s4. * 4 |
    
    \barNumberCheck 49
    s4. * 4 |
  }
  \repeat volta 2 {
    s4. * 4 |
    
    \barNumberCheck 57
    s4. * 2 |
    \tag layout { s4. * 2 | }
    \tag midi {
      \alternative {
        { s4. * 2 | }
        {
          s8 \tempo 8 = 116 s \tempo 8 = 104 s |
          \tempo 8 = 92 s4. |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s2 * 5 \break
  s2 * 4 \break
  s2 * 4 \break
  s2 * 5 \break
  s2 * 5 \break
  s2 * 5 \pageBreak
  
  % page 2
  s2 * 4 \break
  s2 * 4 \break
  s2 * 4 \break
  s2 * 4 \break
  s4. * 8 \break
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
