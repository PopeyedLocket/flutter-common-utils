# flutter-common-utils




#### DESCRIPTION:
```
	Flutter components:
		static text
		image
		text input
		page navigation
		switch button
		slider button
		drop down menu
		charts
			line graph
			bar chart
			pie chart
			scatter plot
			combined chart
		responsive webpages
```

<br/>

###### Static Text and Images
![results](https://github.com/PopeyedLocket/flutter-common-utils/blob/main/images/text_and_image.png?raw=true "Static Text and Images")

<br/>

###### Static Text and Images
![text input](https://github.com/PopeyedLocket/flutter-common-utils/blob/main/images/text_input.png?raw=true "Text Input")

<br/>

###### Static Text and Images
![button types](https://github.com/PopeyedLocket/flutter-common-utils/blob/main/images/button_types.png?raw=true "Button Types")

<br/>

###### Static Text and Images
![bar chart](https://github.com/PopeyedLocket/flutter-common-utils/blob/main/images/bar_chart.png?raw=true "Bar Chart")

<br/>

###### Static Text and Images
![draw shapes](https://github.com/PopeyedLocket/flutter-common-utils/blob/main/images/drawing_shapes.png?raw=true "Draw Shapes")

<br/>

###### Static Text and Images
![page responsive to screen](https://github.com/PopeyedLocket/flutter-common-utils/blob/main/images/page_responsive_to_screen.png?raw=true "Page Responsive to Screen")



			
#### TO DO:
```

	figure out how to host the app / store a database on a server

		for a centralized database

			firebase - googles easy to use database
				tech with tim tutorial #8
					SHA1: 0E:50:A5:C6:1F:01:40:3E:AD:A0:47:68:C3:AE:79:CF:29:79:7D:77
		
					firebase dashboard for monitoring my app
					https://console.firebase.google.com/project/messageapp-9fdf0/overview

					Authenticating Your Client
					https://developers.google.com/android/guides/client-auth
				https://www.youtube.com/watch?v=LeTgMYlGVrM&t=483s
				tech with tim tutorial #9
				https://www.youtube.com/watch?v=a78Qc8rpO7c
			https://firebase.google.com/pricing

			Build a Flutter Login app with Python Backend
				django / node.js / graphQL
			https://www.asapdevelopers.com/flutter-login-app-with-python-backend/

			AWS Amplify
			https://github.com/aws-amplify/amplify-flutter
			https://medium.com/swlh/flutter-apps-with-aws-backend-part-1-basic-setup-7e1dd53e9161
			https://www.infoq.com/news/2021/02/amplify-flutter-cross-platform/

			use "flutter build web" command
				https://www.reddit.com/r/Flutter/comments/fsu5ew/hosting_a_flutter_web_app/
			
			it would be cool if i could host it on AWS though
				would be cool if it connected with your backend python common utils
				with app server scalability handled by aws
				flutter frontend with django backend
				https://www.asapdevelopers.com/flutter-login-app-with-python-backend/

		for a decentralized database
			each app would have to act as both a client and a server
			most users will not be running the app constantly though
			some of them will though to make money off of what is essentially cloud hosting
				these people will form a consistant network that other users casually enter
				and exit. there will be no distinction between consistent and non-consistent
				users (such as miners and users with bitcoin), they will be running the same
				exact software.

			this is where i will connect flutter to c++
				how to use c++ code in flutter (android) application?
					https://www.youtube.com/watch?v=X8JD8hHkBMc
						Here's the link to the sample code: https://github.com/richardheap/libresample_flutter
				https://stackoverflow.com/questions/54952245/how-to-use-c-code-in-flutter-android-application

			or use dart for the backend
				Async vs Isolates | Decoding Flutter
					how to run code asyncronously and in parallel in dart
						async (aka syncronous) is when a thread can wait without blocking
						isolates run multiple processors (aka threads) at the same time in parallel
				https://www.youtube.com/watch?v=5AxWC49ZMzs
			https://pub.dev/packages/shelf_router

			reddit opinions
			https://www.reddit.com/r/FlutterDev/comments/n5e4sz/best_backend_for_flutter/
			https://www.reddit.com/r/FlutterDev/comments/cadhey/what_database_you_use_with_your_flutter_and_why/
			https://www.reddit.com/r/FlutterDev/comments/hikhgy/what_database_you_use_in_2020_with_your_flutter/

	figure out how to get my app in the android app store
		cause apples app store isnt free
		i could then test messaging services and other communication tools
		with someone who has an android phone (dad?)

	test the app performance on your real android phone
		apparently iOS performance is "janky"
			https://youtube.com/watch?v=L3iqmyoogfA&feature=share

	flutter state management:
		https://flutter.dev/docs/development/data-and-backend/state-mgmt/options
			i want to understand how to manage state with
				setState
				InheritedWidget & InheritedModel
				Provider
			and I want to understand how this would interact with state stored on a database as well

	figure out how to incorporate caching various information into your app so that it runs faster

	Dart Isolates - Flutter Basics
	https://www.youtube.com/watch?v=TF8LwonwKhg

	figure out how to run the flutter app as a desktop app
	https://www.smashingmagazine.com/2020/04/responsive-web-desktop-development-flutter/

	other common utils to make eventually

		make an animation
		https://flutter.dev/docs/development/ui/animations

		take a picture
		https://flutter.github.io/samples/take_a_picture_using_the_camera.html

		play a video
		https://flutter.github.io/samples/play_and_pause_a_video.html

		use flutter gem's libraries for these:
			display videos (with play, pause, duration slider, ect.)
			audio recording (with play, pause, duration slider, ect.)
			phone calls
			video chats
			ads
			analytics

		for the response and adaptive webpages
			make another page where its a basic list view with images and on the phone the list view
			takes up the whole screen and on the computer its only in the center
			make it so when the user resizes the screen the page responds with removing the white space
			around the image first, leaving the image in the center, so a percentage decrease, and then
			when the screen gets too narrow for the image the image itself starts to scale down as well

			also make one where its a grid with 3 cols and maybe 9 rows (so that it requires a scroll)
			and then make it so when the page gets too narrow the widgets turn into 2 rows, then 1 row.

	read the actual docs instead of tech with tim stuff

	get some fonts other than the default
		times new roman
		see pubspec.yaml file
			Ctrl + f: https://flutter.dev/custom-fonts/#from-packages
		apparently you have to download them and set them up separately
		https://github.com/flutter/flutter/issues/71350

	check out this gaph QL lib for dart
	https://budde377.medium.com/graphql-codegen-deep-dive-37eee522e4e5

	Introducing FlutterFlow
		maybe check this out
		design tool for flutter that doesn't require programming
		a bunch of devs in the comments say it will never be as customizable as
	https://www.youtube.com/watch?v=5j82wxzwFyI
```



#### APP IDEAS:
```

	value investment app
		shows dividend history
			with stock splits
		earnings history
		net capital history
		debt history
		etc.

		pull data from yahoo finance or something

	audiobook app

		saves your place in the book, on both phone and computer

	singing app

		you get points for hitting the right notes

	folder sync app
		could i use flutter to sync my laptop and computer file system?
			where flutter was a desktop app and a phone app
			folders like:
		id probably have to put rooms folder in a different file system
		but then id have to use a different file ex

	build a free version of the photo lock app

	build a free version of true key
		good practice for storing passwords securily

	FlutterBlue is a bluetooth plugin for Flutter, a new app SDK to help developers build modern multi-platform apps.
	https://github.com/han-so1omon/home-baked-app
```


#### Important Paths and Other Info:
```
	Flutter (aka flutter SDK) location: /usr/lib/flutter/bin
	dart SDK path:                      /usr/lib/flutter/bin/cache/dart-sdk/
	dart2js command path:               /usr/lib/flutter/bin/cache/dart-sdk/bin/dart2js

	Android SDK:    /home/luke/Android/Sdk
	ANDROID_HOME:   /home/luke/Android/Sdk
	Java binary:    /home/luke/Android/android-studio/jre/bin/java
	Android Studio: /home/luke/Android/android-studio/bin/studio.sh

	root android sdk and projects paths
		/root/Android/Sdk
		/root/AndroidStudioProjects/MyApplication

	start android studio with:
		cd /opt/android-studio/bin/
		./studio.sh

	warning when modifying a textinput's text programmatically when the app's keyboard focus is on the textinput
	https://github.com/flutter/flutter/issues/78827

	plugin warnings (from "flutter doctor") don't matter
	https://github.com/flutter/flutter/issues/67986

	Sublime Dart Plugins stuff:
		~/.config/sublime-text-3/Packages/Dart
			set the dart SDK path
		open Sublime > Preferences > Settings > User (right tab)
			set the dart SDK path
```


#### SOURCES:
```
	
	Community code for flutter!!!
		everything you could every need
	https://fluttergems.dev/

	Charting Libraries:
	
		I used this one! vvvvv
		https://github.com/google/charts
			https://pub.dev/packages/charts_flutter
			https://google.github.io/charts/flutter/gallery.html
			bar charts
			line charts
			scatter plot
			combined charts
			pie charts

		this one looks good too
		https://pub.dev/packages/mp_chart
			line chart
			bar charts
			pie charts
			scatter plot
			candle stick

		this is a good candle stick chart lib
		https://pub.dev/packages/flutter_candlesticks		

		this shows sheet music! and also a piano roll
		https://pub.dev/packages/sheet_music

		found all of these charting libraries here
		https://fluttergems.dev/plots-visualization/

	Flutter Canvas
	https://codewithandrea.com/videos/flutter-custom-painting-do-not-fear-canvas/

	DartPad - browser based dart compiler
		useful for testing flutter codec
	https://dartpad.dev/?null_safety=true
```

