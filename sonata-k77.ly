%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\include "globals.ily"

\header { 
  title = "Sonata in D minor"
  opus = "K.77"
  source = "https://ks15.imslp.org/files/imglnks/usimg/2/28/IMSLP626936-PMLP333986-Sonata_K._77_(as_L._168).pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . -0.5)) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . -1) (0 . -2.5))
                      ) \etc
slurShapeC = \shape #'((0 . -0.25) (0 . -0.25) (0 . 0) (0 . 0)) \etc
slurShapeD = \shape #'((0 . -1) (0 . 1) (0 . 0) (0 . 0)) \etc
slurShapeE = \shape #'((0 . -1) (0 . 1) (0 . 0) (0 . 0)) \etc

%
% Music
%

global = {
  \time 3/4
  \key d \minor
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    a''4 r8. d,16( e8. f16 |
    g,4~ g8.[ bf16 a8. gs16]) |
    \appoggiatura { gs8\> } \offsetPositions #'(-1 . 0) a4(~\! a16 b cs d
      e g, f e) |
    \appoggiatura { e8\> } f4(~\! f16 d cs d  e f g a) |
    \appoggiatura { a8\> } \offsetPositions #'(1 . 0) bf4(~\! bf16 g fs g
      a bf c d) |
    \appoggiatura { d8\> } e4(~\! e16 c b c  d e f g) |
    \appoggiatura { g8\> } a4(~\! a16 f e f  c' ef, d cs) |
    \appoggiatura { cs8\> } d4(~\! d16 f e d  e f g a) |
    
    \barNumberCheck 9
    \appoggiatura { d,8\> } c4(~\! c16 e d c  d e f g) |
    \appoggiatura { c,8\> } bf4(~\! bf16 c d c  bf a g f) |
    \appoggiatura { f8\> } e4\! r16 e( d e  g e d e |
    bf'16 g fs g  e' bf a bf  g' e d e |
    bf'4) r16 g( fs g  c bf a g) |
    \appoggiatura { g8 } a4 r16 bf,( a bf  c bf a g) |
    \appoggiatura { g8\> } a4(~\! a16 g f e  f e d c |
    d16 e f g  f g f g  \tag layout { g8.\trill }
      \tag midi { \tuplet 3/2 { g32\mp a g a g a g a g } } f32 g |
    
    \barNumberCheck 17
    f2.) |
  }
  \repeat volta 2 {
    c''4 r8. f,16( g8. a16 |
    bf,4~ bf8.[ d16 c8. b16]) |
    \appoggiatura { b8\> } c4\! r8. \offsetPositions #'(0 . 2) c16( d8. ef16 |
    \appoggiatura { g,8\> } fs4)\! r8. fs16-\slurShapeA ( g8. a16 |
    \appoggiatura { ef8\> } d4)(~\! d16 e fs g  a bf c d) |
    \appoggiatura { c8\> } \offsetPositions #'(1 . 0) bf4(~\! bf8.[ a16 g8.
      fs16]) |
    \appoggiatura { fs8\> } g4(~\! g16 a b c  d ef f! g) |
    
    \barNumberCheck 25
    \appoggiatura { f8\> } ef4(~\! ef8.[ d16 c8. b16]) |
    \appoggiatura { b8\> } c4(~\! c16 d e! f  g a bf! c) |
    \appoggiatura { bf\> } a4(~\! a8.[ g16 f8. e16]) |
    \appoggiatura { e8\> } f4(~\! f16 g a g  f e d cs) |
    \appoggiatura { cs8\> } d4(~\! d16 e f e  d c b a) |
    \appoggiatura { a8\> } gs4(~\! gs16 a b a  gs f e d) |
    \tag layout { \grace { d32( } c4.)(\trill }
      \tag midi { \grace { s32 } \repeat unfold 3 { \tuplet 3/2 { 
      d32 c d c d c } } } b16 a) a'4-\slurShapeC (~ |
    a16 b a gs  a b a b  b8.\trill a32 b ) |
    
    \barNumberCheck 33
    \appoggiatura { b8\> } a4\! r16 f( e f  g a bf! c) |
    \appoggiatura { c8\> } d4\! r16 g,( fs g  a b c d) |
    \appoggiatura { d8\> } e4\! r16 a,( gs a  b cs d e) |
    \appoggiatura { e8\> } f4(~\! f16 d cs d  e f g a |
    bf16 g a f  g e f d  ef cs d b) |
    \appoggiatura { b8\> } cs4\! r16 cs( d e  cs bf a gs) |
    \appoggiatura { gs8\> } a4\! r16 e( d e  g e d e |
    bf' g fs g  cs g fs g  e' bf a bf |
    
    \barNumberCheck 41
    g'4) r16 e( d e  a g f e) |
    \appoggiatura { e8\> } f4\! r16 g,( f g  a g f e) |
    \appoggiatura { e8\> } f4(~\! f16 d cs d)  cs'8->( d~ |
    d16 g f e  a8-.) d,4( cs8-.) |
    \appoggiatura { cs8\> } d4(~\! d8 c16 bf  a g f e |
    \override Parentheses.font-size = #-1
    d16 g! f e f4) 
      \tag layout { \grace { e32( } e8.)\trill \parenthesize _\fermata }
      \tag midi { \grace { s32 } \tuplet 3/2 { e32 f e f e f e f e } } d32 cs |
    \appoggiatura { cs8\> } d4\! r r\fermata |
  }
  \time 3/8
  \repeat volta 2 {
    d'16 a d,8-. bf'(~ |
    
    \barNumberCheck 49
    bf16 gs a8-.) g'!(~ |
    g16 e a d, e cs) |
    \appoggiatura { cs16\> } d8.(\! f16 g a |
    bf8. d,16 ef gs) |
    \appoggiatura { gs16\> } a8.(\! cs,16 d fs) |
    \appoggiatura { fs16\> } g8.(\! b,?16 cs e) |
    \appoggiatura { e16\> } f8.(\! a,16 d c! |
    bf!16 a g f ef d) |
    
    \barNumberCheck 57
    \appoggiatura { d16\> } ef8.\! ef'16-\slurShapeD ( g f |
    ef16 d c bf a g) |
    g16( fs g) g'-\slurShapeE ( bf a |
    g f! ef d cs d)~ |
    d16 cs( d e! a,) e'(~ |
    e16 d e f a,) f'(~ |
    f16 e f g g,) g'(~ |
    g16 f g a a,) a'( |
    
    \barNumberCheck 65
    g16 f e d cs d |
    e16 bf a g f e |
    f16 d' e,8-.) cs' |
    d4.-> |
  }
  \repeat volta 2 {
    d16( a d,8-.) c'(~ |
    c16 a bf8-.) g'(~ |
    g16 ef c bf a g) |
    \appoggiatura { g16\> } fs8.(\! a16 bf c) |
    
    \barNumberCheck 73
    \appoggiatura { d16\> } ef8.(\! g,16 af cs) |
    \appoggiatura { cs16\> } d8.(\! fs,16 g b) |
    \appoggiatura { b16\> } c8.(\! e,16 fs a) |
    \appoggiatura { a16\> } bf8.(\! g16 g' f |
    e16 d c bf a gs) |
    \appoggiatura { gs16\> } a8.\! \offsetPositions #'(-1 . 0) a16( d c |
    bf16 a g f ef-> d~ |
    d16 cs d e! a,) e'(~ |
    
    \barNumberCheck 81
    e16 d e f a,) f'(~ |
    f16 e f g a,) g'(~ |
    g16 f g a a,) a'( |
    g16 f e d cs d |
    e16 f g a bf g |
    d'16 e f g a d, |
    g16 e f8-.) \grace { e32( } \afterGrace 7/8 e8)(\trill { d32[ e] } |
    d4.-\insideSlur ->) |
  }
}


leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    d4( f g) |
    r4 a,_( b |
    cs4 a cs |
    d4 d,) r |
    \offsetPositions #'(0 . 2.5) g'4( g,) r |
    \offsetPositions #'(0 . 2.5) c'4( c,) r |
    \offsetPositions #'(0 . 2.5) f4( f,) r |
    bf'4( g e) |
    
    \barNumberCheck 9
    a4( f d) |
    g4( g, bf |
    c4 c,) r |
    R2. |
    c''4( c, e |
    f4) f,( e |
    f4) f'( a |
    bf4 c c, |
    
    \barNumberCheck 17
    f2.) |
  }
  \repeat volta 2 {
    f4( a bf) |
    r4 c,( d |
    ef4 c) r |
    r4 d( e! |
    fs4 d fs |
    g4 g, a |
    bf4 g b) |
    
    \barNumberCheck 25
    r4 c( d |
    ef4 c e |
    f4) f,-\slurShapeB _( g |
    a4 f a |
    b4 d f |
    e4 e, gs |
    a4 a'-.) c,4( |
    d4 e e, |
    
    \barNumberCheck 33
    a4 a') r |
    bf!4( b) r |
    c4( cs) r |
    d4( d, f |
    g4 g,) r |
    \offsetPositions #'(0 . 2.5) a'4( a,) r |
    \offsetPositions #'(0 . 2.5) a'4( a,) r |
    R2. |
    
    \barNumberCheck 41
    a'4( a, cs |
    d4) d'( cs |
    d4) d,( f |
    g4 a a, |
    bf4 g) r |
    \override Parentheses.font-size = #-1
    gs'4( a a,\parenthesize _\fermata |
    d4) r r\fermata |
  }
  \time 3/8
  \repeat volta 2 {
    d4 g8-. |
    
    \barNumberCheck 49
    cs,4 a8-. |
    d4 d'8-. |
    d8( d,) r |
    a'8( g) g |
    g8( f) f |
    f8( e) e |
    e8( d) d( |
    g8) r r |
    
    \barNumberCheck 57
    g,8 r r |
    g'8 r r |
    g,8 r r |
    g'8 r r |
    a,8 r r |
    a'8 r r |
    a,8 r r |
    a'8 r r |
    
    \barNumberCheck 65
    a,8 r r |
    r8 r cs'( |
    d8 g,-.) a-. |
    d,4.-> |
  }
  \repeat volta 2 {
    d4 fs8-. |
    g4 g,8-. |
    c4. |
    d8( d') d |
    
    \barNumberCheck 73
    d8( c) c |
    c8( bf) bf |
    bf!8( a) a |
    a8( g) g( |
    c8 c, e |
    f8 f,) f'( |
    g8 g, g' |
    a,8) r r |
    
    \barNumberCheck 81
    a8 r r |
    a8 r r |
    a8 r r |
    a8 r r |
    r8 a'( g |
    f8 d f |
    g8 a-.) a,-. |
    d4.-> |
  }
}

dynamics = {
  \override Hairpin.after-line-breaking = ##f
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s2.\mf |
    s2. |
    s4 s8.\< s16\! s8.\> s16\! |
    s4 s16 s4..-\tweak Y-offset -1 \p |
    s16 s8.\cresc s2 |
    \tag layout { s2. } \tag midi { s16 s8.\cresc s2 } |
    s2\f s8.\> s16\! |
    s4 s2\dim |
    
    \barNumberCheck 9
    s2. * 2 |
    s4\p s2\cresc |
    s2. |
    s2.-\tweak Y-offset 0.5 \f |
    s4 s2\mf |
    \tag layout { s2. } \tag midi { s4 s2\mf } |
    s2. |
    
    \barNumberCheck 17
    s2. |
  }
  \repeat volta 2 {
    s2.\mf |
    s2. * 3 |
    s4 s16 s4.\p\< s16\! |
    s2. |
    s4 s4..\< s16\! |
    
    \barNumberCheck 25
    s2. |
    s4 s4..\< s16\! |
    s2.\f |s4 s2\dim |
    s2. |
    s2 s8.\< s16\! |
    s4.. s16\< s4\! |
    s16 s8.\p s8.\< s16\! \tag layout { s8..\> s32\! }
      \tag midi { s8..\mf\> s32\! } |
    
    \barNumberCheck 33
    a4 a16 s4..\p |
    s4 s16 s4.\< s16\! |
    s4 s16 s4.\< s16\! |
    s4 s4..\< s16\! |
    s2.\mf |
    s2. |
    s4 s16 s4..\p\cresc |
    s2. |
    
    \barNumberCheck 41
    s2.\f |
    s4 s2\mf |
    s4 s16 s8\< s16\! \tag layout { s4\f } \tag midi { s4\mf } |
    s2. |
    s4. s\mf |
    s2. * 2 |
  }
  \time 3/8
  \repeat volta 2 {
    s4\p s8\> |
    
    \barNumberCheck 49
    s8 s\! s\< |
    s4 s16 s\! |
    s8. s8\< s16\! |
    s8. s8\< s16\! |
    s8. s8\< s16\! |
    s8. s8\< s16\! |
    s8. s16\< s\! s\> |
    s8 s4\! |
    
    \barNumberCheck 57
    s8. s\mf |
    s4. * 3 |
    s16 s\p s4 |
    s4.\cresc |
    s4 s16 s\f |
    s4. |
    
    \barNumberCheck 65
    s4. * 3 |
    \tag layout { s4. } \tag midi { s4.\mf } |
  }
  \repeat volta 2 {
    s4\p s8\> |
    s8 s4\! |
    s4\> s16 s\! |
    s8. s8\< s16\! |
    
    \barNumberCheck 73
    s8. s8\< s16\! |
    s8. s8\< s16\! |
    s8. s8\< s16\! |
    s8. s\mf |
    s4. |
    s8. s\p |
    s4. |
    s16 s\p s4 |
    
    \barNumberCheck 81
    s4.\cresc |
    s4 s16 s-\tweak Y-offset -1 \mf |
    s4. * 2 |
    s4.\cresc |
    s4. |
    \tag layout { s4.-\tweak Y-offset 0.5 \f } \tag midi { s4\f s8\mf } |
    s4. |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Moderato cantabile" 4 = 80
    s2. * 16 |
    
    \barNumberCheck 17
    s2. |
  }
  \repeat volta 2 {
    s2. * 7 |
    
    \barNumberCheck 25
    s2. * 16 |
    
    \barNumberCheck 41
    s2. * 5 |
    \tag layout { s2. * 2 | }
    \tag midi {
      \alternative {
        {
          s4 \tempo 4 = 72 s \tempo 4 = 66 s |
          \tempo 4 = 60 s4 \tempo 4 = 80 s2 |
        }
        {
          \tempo 4 = 69 s4 \tempo 4 = 60 s \tempo 4 = 54 s |
          \tempo 4 = 48 s4 \tempo 4 = 80 s2 |
        }
      }
    }
  }
  \repeat volta 2 {
    \time 3/8
    \tempo "Minuetto (Allegretto)" 8 = 138
    s4. |
    
    \barNumberCheck 49
    s4. * 16 |
    
    \barNumberCheck 65
    s4. * 4 |
  }
  \repeat volta 2 {
    \set Score.tempoHideNote = ##t
    \tempo 8 = 138
    s4. * 4 |
    
    \barNumberCheck 73
    s4. * 8 |
    
    \barNumberCheck 81
    s4. * 6 |
    \tag layout { s4. * 2 | }
    \tag midi {
      \alternative {
        {
          s8 \tempo 8 = 126 s \tempo 8 = 116 s |
          \tempo 8 = 108 s4. |
        }
        {
          \tempo 8 = 120 s8 \tempo 8 = 108 s \tempo 8 = 96 s |
          \tempo 8 = 84 s4. |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s2. * 4 \break
  \grace { s8 } s2. * 4 \break
  \grace { s8 } s2. * 4 \break
  s2. * 5 \break
  s2. * 5 \break
  \grace { s8 } s2. * 4 \pageBreak |
  
  % page 2
  \grace { s16 } s2. * 4 \break
  \grace { s32 } s2. * 4 \break
  \grace { s8 } s2. * 3 \break
  \grace { s8 } s2. * 3 \break
  s2. * 3 \break
  s2. * 4 \pageBreak
  
  % page 3
  s4. * 7 \break
  \grace { s16 } s4. * 7 \break
  s4. * 7 \break
  s4. * 7 \break
  \grace { s16 } s4. * 6 \break
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
