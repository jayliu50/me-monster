$ ->

  audio = null
  tl = new TimelineMax()
  # test = true
  test = false

  seekTo = (pos) ->
    tl.seek(pos)
    audio.currentTime = pos

  splitWords = (selector) ->
    text = $(selector).text()
    $(selector).empty()
    words = text.split ' '

    _.each words, (word) ->
      $('<div></div>').text "#{word}"
      .css('position', 'relative')
      .css('display','inline-block')
      .appendTo($(selector))
      .after(' ')

    $(selector).children()

  splitLetters = (selector) ->
    text = $(selector).text()
    $(selector).empty()

    for letter in text
      do (letter) ->
        $('<div></div>').text "#{letter}"
        .css('position', 'relative')
        .css('display','inline-block')
        .appendTo($(selector))

    $(selector).children()

  collapseDown = (t, selector, time=1) ->
    t.to(selector, 1, (
      alpha:0
      # visibility: 'collapse'
      'font-size': '0.001pt'
    ))


  $('#play-button').on 'click', ->
    audio = new Audio 'media/me-monster-edit.mp3' unless audio

    audio.play() unless test

    # fittext
    $('#me-monster-1').fitText()

    # TweenLite.to( [target object], [duration in seconds], [destination values] )
    # .from(timelineLite, 0.5, {alpha:0}, "-=0.2")
    # tl.staggerFrom(chars, 0.8, {alpha:0, scale:0, y:80, rotationX:180, transformOrigin:"0% 50% -50",  ease:Back.easeOut}, 0.01, "+=0");
    # .staggerFrom( targets:Array, duration:Number, vars:Object, stagger:Number, position:*, onCompleteAll:Function, onCompleteAllParams:Array, onCompleteScope:* ) : *
    tl.set('body', {perspective: 400})


    tl.from('#title', 1, {}, 0)
    tl.to('#title', 1, (
      'font-size': '0.5em'
      position: 'fixed'
      color: 'gray'
      ), "+5")

    tl.staggerFrom(splitWords('#me-monster-1'), 0.5, {alpha:0}, 0.3, 10.178)

    collapseDown tl, '#me-monster-1'
    tl.staggerFrom(splitWords('#me-monster-2'), 0.5, {alpha:0}, 0.2, 14.383)

    collapseDown tl, '#me-monster-2'


    tl.from('#me', 0.5, {alpha: 0}, 17.199)
    tl.call (() -> $('#me').fitText(0.2)), null, 18.307

    tl.set('#me', {className:"+=me-1"}, 20.163)

    #18.307

    tl.to('#me', 1.04, {x:10, y:15, ease:RoughEase.ease.config(
      strength:3
      points:50
      template:Strong.easeInOut
      # taper:'both'
      randomize:true) }, 21.206)

    # harsh shadow, bright glow
    # tl.set("html", {className:"me-2"}, 20.163);

    # tl.from('#me-3', 0.5, {alpha:0}, 18.307)
    # tl.from('#me-4', 0.5, {alpha:0}, 20.163)
    # tl.from('#me-5', 0.5, {alpha:0}, 21.206)


    # tl.staggerFrom(splitLetters('#me-6'), 0.5, {alpha:0}, 0.05, 23.160)
    tl.to('#me', 1.8, {x:10, y:80, ease:RoughEase.ease.config(
      strength:60
      points:30
      template:Strong.easeInOut
      # taper:'both'
      randomize:true) }, 23.160)
    # last one comes in and blows up everything else :)
    # tl.staggerFrom(splitLetters('#me-7'), 0.5, {alpha:0}, 0.05, 24.958)
    tl.to('#me', 1, {x:100, y:10, ease:RoughEase.ease.config(
      strength:100
      points:60
      template:Strong.easeInOut
      # taper:'both'
      randomize:true) }, 24.958)


    tl.to('#me', 0.5, {alpha:0}, 30.731)

    tl.to('#scene-1', 1, (
      alpha:0
      visibility: 'collapse'
    ), "+=2")


    tl.staggerFrom(splitWords('#nothing'), 0.5, {alpha:0}, 0.3, 39.371)
    tl.from('#waste-1', 0.5, {alpha:0}, 42.079)
    tl.staggerFrom(splitWords('#waste-2'), 0.5, {alpha:0}, 0.2, 43.606)
    tl.staggerFrom(splitWords('#waste-3'), 0.5, {alpha:0}, 0.3, 48.941)
    tl.staggerFrom(splitWords('#waste-4'), 0.5, {alpha:0}, 0.3, 51.428)
    tl.staggerFrom(splitWords('#waste-5'), 0.5, {alpha:0}, 0.3, 54.7)


    tl.to('#scene-2', 1, {alpha:0}, "+=2")


    tl.from('#waiting', 0.5, {alpha:0}, 71.933)
    tl.from('#yeah-1', 0.5, {alpha:0}, 75.530)
    tl.from('#yeah-2', 0.5, {alpha:0}, 77.327)

    tl.from('#you', 0.5, {alpha:0}, 77.936)
    tl.from('#me-2', 0.5, {alpha: 0, scale: "+=1"}, 78.205)
    tl.to '#me-2', 0.5, {zoom: 1.5}, 79.784
    tl.to '#you-me', 0.5, {x: "+=200"}, 80.038
    tl.to '#me-2', 0.5, {scale: "+=5"}, 80.924
    tl.to '#you-me', 0.5, {x: "-=100"}, 80.924
    tl.to '#you-me', 0.5, {x: "+=100"}, 82.068
    tl.to '#you-me', 0.5, {x: "-=100"}, 82.813
    # tl.to '#me-2', 0.5, {scale: "+=5"}, 84.993
    # tl.from('#you-me-2', 0.5, {alpha:0}, 78.205)
    # tl.from('#you-me-3', 0.5, {alpha:0}, 79.784)
    # tl.from('#you-me-4', 0.5, {alpha:0}, 80.038)
    # tl.from('#you-me-5', 0.5, {alpha:0}, 80.924)
    # tl.from('#you-me-6', 0.5, {alpha:0}, 82.068)
    # tl.from('#you-me-7', 0.5, {alpha:0}, 82.813)
    # tl.from('#now', 0.5, {alpha:0}, 84.993)


    tl.to('#scene-3', 1, {alpha:0}, 84.993)

    # What is it about the human condition people get something out of that? That’s why I have a social fantasy.
    # [go fantasy]
    # I wish I were one of the 12 astronaughts.

     # They must love knowing they can beat anyone’s story, whenever they want.
    # tl.from('#moon', 0.5, {alpha:0}, 98.355)
    # 1:43.778 They can sit back  quietly at a dinner party, while some other person, some Me monster doing his thing and let him go,
    # 1:53.841 let him run with the line while you be quiet   …… …    oh, really?
    # tl.from('#zzzz', 0.5, {alpha:0}, 117.649)

    tl.staggerFrom(splitWords('#barrage-0'), 0.5, {alpha:0, x: "-30"}, 0.2, 113.841)
    tl.to '#scene-4', 139.446 - 113.841, {marginTop: (-1 * $('#scene-4').height())}
    # $('#barrage-1').fitText()

    tl.staggerFrom(splitWords('#barrage-1'), 0.5, {alpha:0, x: "-30"}, 0.2, 122.512)

    # tl.call (() -> $('#monster').fitText(0.2)), null, 139.446

    tl.from '#monster', 0.5, {alpha:0}, 139.446

    tl.to '#barrage-2', 0.5, {zoom: "+=0.3"} 140.492
    tl.call (() -> $('#monster').text('RAHRAHRAH').fitText(1)), null, 140.977
    tl.call (() -> $('#monster').text('RAHRAHARAHAH').fitText(1)), null, 141.675
    tl.call (() -> $('#monster').text('RAHHDAAH').fitText(1)), null, 142.650
    tl.call (() -> $('#monster').text('RAAAAAAAAAA').fitText(1)), null, 143.466


    tl.staggerFrom(splitWords('#moon-1'), 0.5, {alpha:0}, 0.3, 150.258)
    # zoom way out and show the response
    tl.to('#scene-4', 0.5, (
      css: (
          transform:'translateZ(-3000px) translateX(1000px)'
        )
      color: '#ccc'
      ), "-=1.2")

    tl.to('#moon-token', 1, {x:45}, "+=0.5")

    tl.to('#scene-4', 1, {alpha:0}, "+=4")

    $('#moon-7').fitText()

    tl.staggerFrom(splitWords('#moon-2'), 0.5, {alpha:0}, 0.2, 159.755)
    tl.staggerFrom(splitWords('#moon-3'), 0.5, {alpha:0}, 0.3, 163.274)
    tl.staggerFrom(splitWords('#moon-4'), 0.5, {alpha:0}, 0.3, 167.094)
    tl.staggerFrom(splitWords('#moon-5'), 0.5, {alpha:0}, 0.3, 173.781)

    collapseDown tl, '#moon-1', 0
    collapseDown tl, '#moon-2', 0
    collapseDown tl, '#moon-3', 0
    collapseDown tl, '#moon-4', 0
    collapseDown tl, '#moon-5', 0


    tl.staggerFrom(splitWords('#moon-6'), 0.5, {alpha:0}, 0.2, 177.346)
    tl.staggerFrom(splitWords('#moon-7'), 0.5, {alpha:0}, 0.2, 179.66)

    tl.to('#scene-5', 1, {alpha:0}, "+=2")

    if test
      tl.seek 113


  $('#stop-button').on 'click', ->
    audio.pause()
    # tl.seek(0)
    tl.stop()