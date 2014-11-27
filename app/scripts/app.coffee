$ ->

	audio = null
	tl = new TimelineMax()

	seekTo = (pos) ->
		tl.seek(pos)
		audio.currentTime = pos

	splitText = (selector) ->
		text = $(selector).text()
		$(selector).empty()
		words = text.split ' '

		_.each words, (word) ->
			$('<div></div>').text "#{word} "
			.css('position', 'relative')
			.css('display','inline-block')
			.appendTo $(selector)

		$(selector).children()

	$('#play-button').on 'click', ->
		audio = new Audio 'media/me-monster-edit.mp3'
		audio.play()

		# TweenLite.to( [target object], [duration in seconds], [destination values] )
		# .from(timelineLite, 0.5, {width:"0px", alpha:0}, "-=0.2")
		# tl.staggerFrom(chars, 0.8, {opacity:0, scale:0, y:80, rotationX:180, transformOrigin:"0% 50% -50",  ease:Back.easeOut}, 0.01, "+=0");
		# .staggerFrom( targets:Array, duration:Number, vars:Object, stagger:Number, position:*, onCompleteAll:Function, onCompleteAllParams:Array, onCompleteScope:* ) : *
		tl.from('#title', 1, {}, 0)
		tl.staggerFrom(splitText('#me-monster-1'), 0.5, {width:"0px", alpha:0}, 0.3, 10.178)
		tl.staggerFrom(splitText('#me-monster-2'), 0.5, {width:"0px", alpha:0}, 0.2, 14.383)

		tl.from('#me-1', 0.5, {width:"0px", alpha:0}, 17.199)
		tl.from('#me-2', 0.5, {width:"0px", alpha:0}, 17.199)
		tl.from('#me-3', 0.5, {width:"0px", alpha:0}, 18.307)
		tl.from('#me-4', 0.5, {width:"0px", alpha:0}, 20.163)
		tl.from('#me-5', 0.5, {width:"0px", alpha:0}, 21.206)
		tl.from('#me-6', 0.5, {width:"0px", alpha:0}, 23.160)
		tl.from('#me-7', 0.5, {width:"0px", alpha:0}, 24.958)

		tl.from('#beware', 0.5, {width:"0px", alpha:0}, 30.731)


		tl.staggerFrom(splitText('#nothing'), 0.5, {width:"0px", alpha:0}, 0.3, 39.371)
		tl.from('#waste-1', 0.5, {width:"0px", alpha:0}, 42.079)
		tl.staggerFrom(splitText('#waste-2'), 0.5, {width:"0px", alpha:0}, 0.2, 43.606)
		tl.staggerFrom(splitText('#waste-3'), 0.5, {width:"0px", alpha:0}, 0.3, 48.941)
		tl.staggerFrom(splitText('#waste-4'), 0.5, {width:"0px", alpha:0}, 0.3, 51.428)
		tl.staggerFrom(splitText('#waste-5'), 0.5, {width:"0px", alpha:0}, 0.3, 54.7)
		tl.from('#waiting', 0.5, {width:"0px", alpha:0}, 71.933)
		tl.from('#yeah-1', 0.5, {width:"0px", alpha:0}, 77.327)
		tl.from('#you-me-1', 0.5, {width:"0px", alpha:0}, 77.936)
		tl.from('#you-me-2', 0.5, {width:"0px", alpha:0}, 78.205)
		tl.from('#you-me-3', 0.5, {width:"0px", alpha:0}, 79.784)
		tl.from('#you-me-4', 0.5, {width:"0px", alpha:0}, 80.038)
		tl.from('#you-me-5', 0.5, {width:"0px", alpha:0}, 80.924)
		tl.from('#you-me-6', 0.5, {width:"0px", alpha:0}, 82.068)
		tl.from('#you-me-7', 0.5, {width:"0px", alpha:0}, 82.813)
		tl.from('#now', 0.5, {width:"0px", alpha:0}, 84.993)


		# What is it about the human condition people get something out of that? That’s why I have a social fantasy.
		# [go fantasy]
		# I wish I were one of the 12 astronaughts.

		 # They must love knowing they can beat anyone’s story, whenever they want.
		tl.from('#moon', 0.5, {width:"0px", alpha:0}, 98.355)
		# 1:43.778 They can sit back  quietly at a dinner party, while some other person, some Me monster doing his thing and let him go,
		# 1:53.841 let him run with the line while you be quiet		…… …		oh, really?
		tl.from('#zzzz', 0.5, {width:"0px", alpha:0}, 117.649)
		tl.staggerFrom(splitText('#barrage-1'), 0.5, {width:"0px", alpha:0}, 0.2, 122.512)
		tl.staggerFrom(splitText('#barrage-2'), 0.5, {width:"0px", alpha:0}, 0.2, 143.446)
		tl.staggerFrom(splitText('#moon-1'), 0.5, {width:"0px", alpha:0}, 0.3, 150.258)
		tl.staggerFrom(splitText('#moon-2'), 0.5, {width:"0px", alpha:0}, 0.2, 159.755)
		tl.staggerFrom(splitText('#moon-3'), 0.5, {width:"0px", alpha:0}, 0.3, 163.274)
		tl.staggerFrom(splitText('#moon-4'), 0.5, {width:"0px", alpha:0}, 0.3, 167.094)
		tl.staggerFrom(splitText('#moon-5'), 0.5, {width:"0px", alpha:0}, 0.3, 173.781)
		tl.staggerFrom(splitText('#moon-6'), 0.5, {width:"0px", alpha:0}, 0.3, 177.346)

	$('#stop-button').on 'click', ->
		audio.pause()
		tl.seek(0)