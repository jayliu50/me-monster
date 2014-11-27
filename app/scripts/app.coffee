$ ->

	audio = null
	tl = new TimelineMax()

	seekTo = (pos) ->
		tl.seek(pos)
		audio.currentTime = pos

	$('#play-button').on 'click', ->
		audio = new Audio 'media/me-monster-edit.mp3'
		audio.play()

		# TweenLite.to( [target object], [duration in seconds], [destination values] )
		# .from(timelineLite, 0.5, {width:"0px", alpha:0}, "-=0.2")
		tl.from('#title', 1, {}, 0)
		tl.from('#me-monster', 0.5, {width:"0px", alpha:0}, 10.178)
		tl.from('#me-1', 0.5, {width:"0px", alpha:0}, 17.199)
		tl.from('#me-2', 0.5, {width:"0px", alpha:0}, 17.199)
		tl.from('#me-3', 0.5, {width:"0px", alpha:0}, 18.307)
		tl.from('#me-4', 0.5, {width:"0px", alpha:0}, 20.163)
		tl.from('#me-5', 0.5, {width:"0px", alpha:0}, 21.206)
		tl.from('#me-6', 0.5, {width:"0px", alpha:0}, 23.160)
		tl.from('#me-7', 0.5, {width:"0px", alpha:0}, 24.958)


		tl.from('#nothing', 0.5, {width:"0px", alpha:0}, 38.813)
		tl.from('#waste-1', 0.5, {width:"0px", alpha:0}, 42.079)
		tl.from('#waste-2', 0.5, {width:"0px", alpha:0}, 43.606)
		tl.from('#waste-3', 0.5, {width:"0px", alpha:0}, 48.941)
		tl.from('#waste-4', 0.5, {width:"0px", alpha:0}, 51.428)
		tl.from('#waste-5', 0.5, {width:"0px", alpha:0}, 54.7)
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
		tl.from('#barrage', 0.5, {width:"0px", alpha:0}, 122.512)
		tl.from('#moon-1', 0.5, {width:"0px", alpha:0}, 150.258)
		tl.from('#moon-2', 0.5, {width:"0px", alpha:0}, 159.755)
		tl.from('#moon-3', 0.5, {width:"0px", alpha:0}, 163.274)
		tl.from('#moon-4', 0.5, {width:"0px", alpha:0}, 173.781)
		tl.from('#moon-5', 0.5, {width:"0px", alpha:0}, 177.346)

	$('#stop-button').on 'click', ->
		audio.pause()
		tl.seek(0)