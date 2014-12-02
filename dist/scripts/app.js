$(function() {
  var audio, collapseDown, run, seekTo, splitLetters, splitWords, test, tl;
  audio = null;
  tl = new TimelineMax();
  test = false;
  seekTo = function(pos) {
    tl.seek(pos);
    return audio.currentTime = pos;
  };
  splitWords = function(selector) {
    var text, words;
    text = $(selector).text();
    $(selector).empty();
    words = text.split(' ');
    _.each(words, function(word) {
      return $('<div></div>').text("" + word).css('position', 'relative').css('display', 'inline-block').appendTo($(selector)).after(' ');
    });
    return $(selector).children();
  };
  splitLetters = function(selector) {
    var letter, text, _fn, _i, _len;
    text = $(selector).text();
    $(selector).empty();
    _fn = function(letter) {
      return $('<div></div>').text("" + letter).css('position', 'relative').css('display', 'inline-block').appendTo($(selector));
    };
    for (_i = 0, _len = text.length; _i < _len; _i++) {
      letter = text[_i];
      _fn(letter);
    }
    return $(selector).children();
  };
  collapseDown = function(t, selector, time) {
    if (time == null) {
      time = 1;
    }
    return t.to(selector, 1, {
      alpha: 0,
      'font-size': '0.001pt'
    });
  };
  run = function() {
    if (!audio) {
      audio = new Audio('media/me-monster-edit.mp3');
    }
    if (!test) {
      audio.play();
    }
    $('#me-monster-1').fitText();
    tl.set('body', {
      perspective: 400
    });
    tl.from('#title', 1, {}, 0);
    tl.to('#title', 1, {
      'font-size': '0.5em',
      position: 'fixed',
      color: 'gray'
    }, "+5");
    tl.staggerFrom(splitWords('#me-monster-1'), 0.5, {
      alpha: 0
    }, 0.3, 10.178);
    collapseDown(tl, '#me-monster-1');
    tl.staggerFrom(splitWords('#me-monster-2'), 0.5, {
      alpha: 0
    }, 0.2, 14.383);
    collapseDown(tl, '#me-monster-2');
    tl.from('#me', 0.5, {
      alpha: 0
    }, 17.199);
    tl.call((function() {
      return $('#me').fitText(0.2);
    }), null, 18.307);
    tl.set('#me', {
      className: "+=me-1"
    }, 20.163);
    tl.to('#me', 1.04, {
      x: 10,
      y: 15,
      ease: RoughEase.ease.config({
        strength: 3,
        points: 50,
        template: Strong.easeInOut,
        randomize: true
      })
    }, 21.206);
    tl.to('#me', 1.8, {
      x: 10,
      y: 80,
      ease: RoughEase.ease.config({
        strength: 60,
        points: 30,
        template: Strong.easeInOut,
        randomize: true
      })
    }, 23.160);
    tl.to('#me', 1, {
      x: 100,
      y: 10,
      ease: RoughEase.ease.config({
        strength: 100,
        points: 60,
        template: Strong.easeInOut,
        randomize: true
      })
    }, 24.958);
    tl.to('#me', 0.5, {
      alpha: 0
    }, 30.731);
    tl.to('#scene-1', 1, {
      alpha: 0,
      visibility: 'collapse'
    }, "+=2");
    tl.staggerFrom(splitWords('#nothing'), 0.5, {
      alpha: 0
    }, 0.3, 39.371);
    tl.from('#waste-1', 0.5, {
      alpha: 0
    }, 42.079);
    tl.staggerFrom(splitWords('#waste-2'), 0.5, {
      alpha: 0
    }, 0.2, 43.606);
    tl.staggerFrom(splitWords('#waste-3'), 0.5, {
      alpha: 0
    }, 0.3, 48.941);
    tl.staggerFrom(splitWords('#waste-4'), 0.5, {
      alpha: 0
    }, 0.3, 51.428);
    tl.staggerFrom(splitWords('#waste-5'), 0.5, {
      alpha: 0
    }, 0.3, 54.7);
    tl.to('#scene-2', 1, {
      alpha: 0
    }, "+=2");
    tl.from('#waiting', 0.5, {
      alpha: 0
    }, 71.933);
    tl.from('#yeah-1', 0.5, {
      alpha: 0
    }, 75.530);
    tl.from('#yeah-2', 0.5, {
      alpha: 0
    }, 77.327);
    tl.from('#you', 0.5, {
      alpha: 0
    }, 77.936);
    tl.from('#me-2', 0.5, {
      alpha: 0,
      scale: "+=1"
    }, 78.205);
    tl.to('#me-2', 0.5, {
      zoom: 1.5
    }, 79.784);
    tl.to('#you-me', 0.5, {
      x: "+=500"
    }, 80.038);
    tl.to('#me-2', 0.5, {
      scale: "+=5"
    }, 80.924);
    tl.to('#you-me', 0.5, {
      x: "-=100"
    }, 80.924);
    tl.to('#you-me', 0.5, {
      x: "+=100"
    }, 82.068);
    tl.to('#you-me', 0.5, {
      x: "-=100"
    }, 82.813);
    tl.to('#scene-3', 1, {
      alpha: 0
    }, 84.993);
    tl.staggerFrom(splitWords('#barrage-0'), 0.5, {
      alpha: 0,
      x: "-30"
    }, 0.2, 113.841);
    tl.to('#scene-4', 139.446 - 113.841, {
      marginTop: -1 * $('#scene-4').height()
    });
    tl.staggerFrom(splitWords('#barrage-1'), 0.5, {
      alpha: 0,
      x: "-30"
    }, 0.2, 122.512);
    tl.from('#monster', 0.5, {
      alpha: 0
    }, 139.446);
    tl.from('#barrage-2', 0.5, {
      alpha: 0
    }, 140.492);
    tl.from('#barrage-3', 0.5, {
      alpha: 0
    }, 140.977);
    tl.from('#barrage-4', 0.5, {
      alpha: 0
    }, 141.675);
    tl.from('#barrage-5', 0.5, {
      alpha: 0
    }, 142.650);
    tl.from('#barrage-6', 0.5, {
      alpha: 0
    }, 143.466);
    tl.staggerFrom(splitWords('#moon-1'), 0.5, {
      alpha: 0
    }, 0.3, 150.258);
    tl.to('#scene-4', 0.5, {
      css: {
        transform: 'translateZ(-800px) translateX(1000px)'
      },
      color: '#ccc'
    }, "-=1.2");
    tl.to('#moon-token', 1, {
      x: 45
    }, "+=0.5");
    tl.to('#scene-4', 1, {
      alpha: 0
    }, "+=4");
    $('#moon-7').fitText();
    tl.staggerFrom(splitWords('#moon-2'), 0.5, {
      alpha: 0
    }, 0.2, 159.755);
    tl.staggerFrom(splitWords('#moon-3'), 0.5, {
      alpha: 0
    }, 0.3, 163.274);
    tl.staggerFrom(splitWords('#moon-4'), 0.5, {
      alpha: 0
    }, 0.3, 167.094);
    tl.staggerFrom(splitWords('#moon-5'), 0.5, {
      alpha: 0
    }, 0.3, 173.781);
    collapseDown(tl, '#moon-part-1', 0);
    tl.staggerFrom(splitWords('#moon-6'), 0.5, {
      alpha: 0
    }, 0.2, 177.346);
    tl.staggerFrom(splitWords('#moon-7'), 0.5, {
      alpha: 0
    }, 0.2, 179.66);
    tl.to('#scene-5', 1, {
      alpha: 0
    }, "+=2");
    tl.to('#title', 1, {
      'font-size': '1em',
      position: 'initial',
      color: 'black'
    }, "+=2");
    if (test) {
      return tl.seek(179);
    }
  };
  run();
  return $('#stop-button').on('click', function() {
    audio.pause();
    return tl.stop();
  });
});
