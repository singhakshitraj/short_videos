# Scroll-App
This is a short-video application created with Flutter. The idea and creation of this project is somewhat unique due to the fact that the comment/reply to a video is not a text message but a video in itself.

## Application
The Entire Functioning of the application can be explained by the following sections-

### Initialisation
The app initialises by showing a Splash Screen. Simultaneously, the data is fetched from the API. During the asynchronous fetching of data, the Splash Screen remains. When the data is fetched, the splash screen is removed.

### Video-Loading
During the time when the video is loading, the screen shows a thumbnail of the video and linear progress indicator, which is an indication of a loading state. During this time, VideoPlayerController is initialised and the video loads. When it is loaded completely, it is auto-played. The Player also offers options to play and pause the video.

### Video Format
The Videos are in a bottom-scrollable mode and its replies can be obtained by horizontal scrolling. When a new-video is being played, its replies are being loaded concurrently.

### State Management
For management of states of the application, BLoC is used. The reason for choosing BLoC is because of its scaling abilities. If any changes or updates need to be made in the future, we can make them very easily with BLoC.

## Functioning
The Functioning of the tha application can be viewed from -
https://drive.google.com/file/d/1QzF0FFp5HBHzHOGgMt2MggXL1txxXcgZ/view
