# flutter-common-uits



#### DESCRIPTION:
```
	Flutter components:
		static text
		image
		text input
		page navigation
```


#### Important Paths:
```
	Flutter (aka flutter SDK) location: /usr/lib/flutter/bin
	dart SDK path:                      /usr/lib/flutter/bin/cache/dart-sdk/
	dart2js command path:               /usr/lib/flutter/bin/cache/dart-sdk/bin/dart2js

	Android SDK:    /home/luke/Android/Sdk
	ANDROID_HOME:   /home/luke/Android/Sdk
	Java binary:    /home/luke/Android/android-studio/jre/bin/java
	Android Studio: /home/luke/Android/android-studio/bin/studio.sh

	Sublime Dart Plugins stuff:
		~/.config/sublime-text-3/Packages/Dart
			set the dart SDK path
		open Sublime > Preferences > Settings > User (right tab)
			set the dart SDK path
```
			
#### TO DO:
```

	make a bunch of flutter common utils (in the projects folder)

		drop down menu
			https://yashodgayashan.medium.com/flutter-dropdown-button-widget-469794c886d0
			https://medium.com/flutterdevs/dropdown-in-flutter-324ae9caa743

		move each util to its own button

		charts
			make each chart have its own button
            https://google.github.io/charts/flutter/gallery.html

	    flutter canvas
	    	draw
	    		lines
	    		rectangles
	    		circles
	    	maybe do an animation

		for a centralized database
			would be cool if it connected with your backend database common components
			with app server scalability handled by aws
		for a decentralized database
			each app would have to act as both a client and a server
			most users will not be running the app constantly though
			some of them will though to make money off of what is essentially cloud hosting
				these people will form a consistant network that other users casually enter
				and exit. there will be no distinction between consistent and non-consistent
				users (such as miners and users with bitcoin), they will be running the same
				exact software.

		display videos (with play, pause, duration slider, ect.)
		audio recording (with play, pause, duration slider, ect.)
		phone calls
		video chats

    figure out how to host the app / store a database on the server
        maybe use firebase, maybe use "flutter build web" command
            https://www.reddit.com/r/Flutter/comments/fsu5ew/hosting_a_flutter_web_app/
        if you use firebase, then do tim's tutorial #8 (and the rest of the series)
        it would be cool if i could host it on AWS though
        flutter frontend with django backend
        https://www.asapdevelopers.com/flutter-login-app-with-python-backend/

    test the app performance on your real android phone
        apparently iOS performance is "janky"
            https://youtube.com/watch?v=L3iqmyoogfA&feature=share

    would be cool also to figure out how to get my app in the android app store
        cause apples app store isnt free
        i could then test messaging services and other communication tools
        with someone who has an android phone (dad?)

    Customizing the AppBar in Flutter: An overview with examples
    https://blog.logrocket.com/flutter-appbar-tutorial/

    do the ad widget demo




	make a flutter app for yourself
		possible app ideas:

			value investment app
				shows dividend history
					with stock splits
				earnings history
				net capital history
				debt history
				etc.

				pull data from yahoo finance or something

			singing app
				you get points for hitting the right notes

			folder sync app
				could i use flutter to sync my laptop and computer file system?
					where flutter was a desktop app and a phone app
					folders like:
						girls
						music (maybe)
				id probably have to put rooms folder in a different file system
				but then id have to use a different file ex

			build a free version of the photo lock app

			build a free version of true key
				good practice for storing passwords securily

			FlutterBlue is a bluetooth plugin for Flutter, a new app SDK to help developers build modern multi-platform apps.
			https://github.com/han-so1omon/home-baked-app


	get some fonts other than the default
		times new roman
		apparently you have to download them and set them up separately
		https://github.com/flutter/flutter/issues/71350

	warning when modifying a textinput's text programmatically when the app's keyboard focus is on the textinput
	https://github.com/flutter/flutter/issues/78827

	plugin warnings (from "flutter doctor") don't matter
	https://github.com/flutter/flutter/issues/67986

	start android studio with:
		cd /opt/android-studio/bin/
		./studio.sh

	root android sdk and projects paths
		/root/Android/Sdk
		/root/AndroidStudioProjects/MyApplication


```

#### SOURCES:
```
```


