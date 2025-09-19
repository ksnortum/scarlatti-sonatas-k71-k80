%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

#(set-global-staff-size 18)

\header { 
  composer = "Domenico Scarlatti (1685-1757)"
  maintainer = "Knute Snortum"
  maintainerEmail = "knute (at) snortum (dot) net"
  copyright = \markup { 
    \center-column { \concat {
      "Copyright © 2025 " \with-url #"https://github.com/ksnortum" 
      "Knute Snortum." " Licensed under " 
      \with-url #"https://creativecommons.org/licenses/by-sa/4.0/" 
      "CC BY-SA 4.0"
    } }
  }
}

\paper {
  ragged-right = ##f
  ragged-last-bottom = ##f
  min-systems-per-page = 5

  markup-system-spacing = 
    #'((basic-distance . 2)
       (padding . 1)) % defaults: 1, 0.5
    
  system-system-spacing =
    #'((basic-distance . 8) 
       (minimum-distance . 4)
       (padding . 2)
       (stretchability . 60)) % defaults: 12, 8, 1, 60

  last-bottom-spacing = 
    #'((basic-distance . 6)
       (minimum-distance . 4)
       (padding . 3)
       (stretchability . 30)) % defaults 1, 0, 1, 30
    
  top-system-spacing.minimum-distance = 10
    
  #(set-paper-size "letter")

  two-sided = ##t
  inner-margin = 12\mm
  outer-margin = 8\mm
}

\layout {
  \context {
    \Score
    % TODO uncomment \omit BarNumber
    \override Slur.details.free-head-distance = 0.75
    \override PhrasingSlur.details.free-head-distance = 0.75
    \override Stem.details.beamed-lengths = #'(3.5 3.9)
  }
  \context {
    \Voice
    \override Tie.minimum-length = 2.5
  }
  % Helps keep dynamics from intersecting the span bar line.
  \context { 
    \Dynamics
    \consists Pure_from_neighbor_engraver
    \remove Bar_engraver
  }
}

\midi {
  % Dynamics are mostly in the staff, not the voice
  \context {
    \Staff
    \consists "Dynamic_performer"
  }
  \context {
    \Voice
    \remove "Dynamic_performer"
  }        
  \context {
    \Score
    midiMinimumVolume = #0.01
    midiMaximumVolume = #0.99
  }
}


%
% Definitions
%

ffStentandoMarkup = \markup { ff \normal-text \large \italic stentando }
ffStentando = 
  \tweak self-alignment-X LEFT
  #(make-dynamic-script ffStentandoMarkup) 

#(define expect-warning-times (lambda args
   (for-each (lambda _ (apply ly:expect-warning (cdr args)))
             (iota (car args)))))

% Usage: % #(expect-warning-times 4 "omitting tuplet bracket")

% parenLeft =
% \once\override Parentheses.stencils =
% #(grob-transformer 'stencils
%                     (lambda (grob stils)
%                       (list (first stils) empty-stencil)))
% 
% parenRight =
% \once\override Parentheses.stencils =
% #(grob-transformer 'stencils
%                     (lambda (grob stils)
%                       (list empty-stencil (second stils))))

startParenthesis = {
  \once \override Parentheses.stencils = #(lambda (grob)
        (let ((par-list (parentheses-interface::calc-parenthesis-stencils grob)))
          (list (car par-list) point-stencil )))
}

endParenthesis = {
  \once \override Parentheses.stencils = #(lambda (grob)
        (let ((par-list (parentheses-interface::calc-parenthesis-stencils grob)))
          (list point-stencil (cadr par-list))))
} 

%%%%%% Example:
% {
%   \override Parentheses.font-size = #5
%   \startParenthesis <c \parenthesize c'>
%   d' e' f'
%   \endParenthesis \parenthesize g'
% } 
%
% { 
%   \clef bass
%   < f \parenthesize \tweak font-size #-1 f, >2
% }

% pocoCrescMarkup = \markup \large \italic "poco cresc."
% pocoCresc =
%   #(make-music 'CrescendoEvent 'span-direction START 'span-type 'text
%                'span-text pocoCrescMarkup)

% crescNoDotMarkup = \markup \large \italic cresc
% crescNoDot =
%   #(make-music 'CrescendoEvent 'span-direction START 'span-type 'text
%                'span-text crescNoDotMarkup)

% crescWOMarkup = \markup \large \italic \whiteout \pad-markup #0.25 cresc.
% crescWO =
%   #(make-music 'CrescendoEvent 'span-direction START 'span-type 'text
%                'span-text crescWOMarkup)

% dimERallMarkup = \markup \large \italic "dim. e rall."
% dimERall = 
%   #(make-music 'DecrescendoEvent 'span-direction START 'span-type 'text
%                'span-text dimERallMarkup)

staffUp   = \change Staff = "upper"
staffDown = \change Staff = "lower"

voiceUp = {
  \change Staff = "upper"
  \voiceFour 
}
voiceDown = {
  \change Staff = "lower"
  \voiceThree 
}
% oneVoiceUp = {
%   \change Staff = "upper"
%   \oneVoice
% }

hideNoteHead = \once {
  \omit Stem
  \omit Dots
  \omit Flag
  \hideNotes
  \override NoteColumn.ignore-collision = ##t
}

tupletOff = {
  \omit TupletBracket
  \omit TupletNumber
}
tupletOn = {
  \undo \omit TupletBracket
  \undo \omit TupletNumber
}

offsetPositions =
#(define-music-function (offsets) (number-pair?)
  #{
     \once \override Slur.control-points =
       #(lambda (grob)
          (match-let ((((_ . y1) _ _ (_ . y2))
                       (ly:slur::calc-control-points grob))
                      ((off1 . off2) offsets))
            (set! (ly:grob-property grob 'positions)
                  (cons (+ y1 off1) (+ y2 off2)))
            (ly:slur::calc-control-points grob)))
  #})

%% Usage:
%
% \relative c'' {
%   \offsetPositions #'(0 . 2)
%   c4( c, d2)
% }

% beamEighthNotes.24 = {
%   \set Voice.beamExceptions = \beamExceptions { 16[ 16 16 16] }
%   \set Voice.baseMoment = #(ly:make-moment 1/8)
%   \set Voice.beatStructure = 4,0
% }

beamQuarterNotes.44 = {
  \set Voice.beamExceptions = #'()
  \set Voice.baseMoment = #(ly:make-moment 1/4)
  \set Voice.beatStructure = 1,1,1,1
}

% beamEighthNotes.38 = {
%   \set Voice.beamExceptions = #'()
%   \set Voice.baseMoment = #(ly:make-moment 1/8)
%   \set Voice.beatStructure = 1,1,1
% }

% revertBeaming = {
%   \unset Voice.beamExceptions
%   \unset Voice.baseMoment
%   \unset Voice.beatStructure
% }

% Subdivide beams
% e.g.: a32 \sdb2 b a b
sdb = #(define-music-function
   (n m)
   (integer? ly:music?)
   #{ 
     \set stemRightBeamCount = #n
     #m
     \set stemLeftBeamCount = #n
   #})


% strictSpacingOn = {
%   \override Score.SpacingSpanner.strict-note-spacing = ##t
%   \newSpacingSection
% }
% strictSpacingOff = {
%   \override Score.SpacingSpanner.strict-note-spacing = ##f
%   \newSpacingSection
% }

% accidentalOverTrill = \once {
%   \override TextScript.script-priority = -50
%   \override Script.script-priority = -100
% }

% trillBelow = \tweak Script.script-priority -100 \etc
insideSlur = \tweak avoid-slur #'inside \etc
% noPriority = \tweak outside-staff-priority ##f \etc

% clefAfterBarLine = 
%   \once \override Score.BreakAlignment.break-align-orders = 
%     #(make-vector 3 '(staff-bar clef))

%
% Markup
%

trillNatural = \markup \teeny \concat { " " \natural }
% trillFlat = \markup \teeny \concat { " " \flat }
% md = \markup \large \italic \halign #-0.4 m.d.
% ms = \markup \large \italic \halign #-0.2 m.s.
% sopra = \markup \large \italic sopra
% crescMarkup = \markup \large \italic cresc.
% dimMarkup = \markup \large \italic dim.
% pesante = \markup \large \italic pesante
% rallAPocoAPoco = 
%   \markup \large \italic \whiteout \pad-markup #0.25 "rall. a poco a poco"
pocoRit = \markup \large \italic "poco rit."
rall = \markup \large \italic rall.
% rit = \markup \large \italic rit.
aTempo = \markup \large \italic "a tempo"
% dimERall = \markup \large \italic "dim. e rall."
% pocoStent = \markup \large \italic "poco stent."
nonLegato = \markup \large \italic "non legato"
% pocoMenoMosso = 
%   \markup \large \italic \whiteout \pad-markup #0.25 "poco meno mosso"
pesante = \markup \large \italic pesante
sempreF = \markup { \large \italic sempre \dynamic f }
% scherzando = \markup \large\italic scherzando
% sfMarkup = \markup \dynamic sf
% ppMarkup = \markup \dynamic pp
