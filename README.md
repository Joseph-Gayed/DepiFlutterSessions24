# **<span style="text-decoration:underline;">0. Environment [Setup](https://docs.flutter.dev/get-started/install/windows/mobile)</span>**



* Download [Flutter sdk](https://docs.flutter.dev/get-started/install).
* Add Flutter bin path to environment path
* Download [Android Studio](https://developer.android.com/studio) and install it.
* Open Android Studio Plugins and Install plugins: [Flutter](https://plugins.jetbrains.com/plugin/9212-flutter). and [Dart](https://plugins.jetbrains.com/plugin/6351-dart) .
* Run the “flutter doctor” command. and follow the output


# **<span style="text-decoration:underline;">1. Declarative UI vs Imperative</span>**

* **Declarative:** means that Flutter builds its user interface to reflect the current state of your app. \
When the state of your app changes, that triggers a redraw of the user interface.
* **Imperative:**  means  changing of the UI itself (like `widget.setText`) \
[Understanding UI Paradigms](https://www.dhiwise.com/post/declarative-ui-vs-imperative-ui-in-flutter-development) \
[Simple Example to show difference](https://docs.flutter.dev/get-started/flutter-for/declarative)


# **<span style="text-decoration:underline;">2. Everything is [Widget](https://docs.flutter.dev/reference/widgets)</span>**



* Create a new flutter project and In the main.dart , delete everything and start from scratch.
* Create new Stateless widget (MyApp)
* [Widget catalog](https://docs.flutter.dev/ui/widgets): [Cupertino ](https://docs.flutter.dev/ui/widgets/cupertino) [Material](https://docs.flutter.dev/ui/widgets/material)
* Explain [Material App](https://api.flutter.dev/flutter/material/MaterialApp-class.html) 
* Explain [Scaffold](https://api.flutter.dev/flutter/material/Scaffold-class.html)
    * Explain [AppBar ](https://api.flutter.dev/flutter/material/AppBar-class.html) (title , color , elevation , leading , actions)
* Explain [Center](https://api.flutter.dev/flutter/widgets/Center-class.html)
* Explain [Container ](https://api.flutter.dev/flutter/widgets/Container-class.html)
    * Explain Padding property  , 
        * [EdgeInset](https://api.flutter.dev/flutter/painting/EdgeInsets-class.html) (all , symmetric, only)
    * Explain decoration property [BoxDecoration ](https://api.flutter.dev/flutter/painting/BoxDecoration-class.html)
        * Take care conflict between color and decoration properties  
        * [borderRadius](https://api.flutter.dev/flutter/painting/BorderRadius-class.html)	
* Explain [Padding ](https://api.flutter.dev/flutter/widgets/Padding-class.html)Widget
* Explain [Text](https://api.flutter.dev/flutter/widgets/Text-class.html)
    * [textStyle](https://api.flutter.dev/flutter/painting/TextStyle-class.html)
* Explain [SelectableText](https://api.flutter.dev/flutter/material/SelectableText-class.html) , [SelectionArea](https://api.flutter.dev/flutter/material/SelectionArea-class.html)
* Explain [Icon](https://api.flutter.dev/flutter/widgets/Icon-class.html)
    * Built-in [icons](https://api.flutter.dev/flutter/material/Icons-class.html)	
* Explain [Image](https://api.flutter.dev/flutter/widgets/Image-class.html)
    * Asset Folder
    * [Image.asset](https://api.flutter.dev/flutter/widgets/Image/Image.asset.html)
    * [Image.network](https://api.flutter.dev/flutter/widgets/Image/Image.network.html)
* Explain [CircleAvatar](https://api.flutter.dev/flutter/material/CircleAvatar-class.html)	
    * [AssetImage](https://api.flutter.dev/flutter/painting/AssetImage-class.html)
    * [NetworkImage](https://api.flutter.dev/flutter/painting/NetworkImage-class.html)
    * [LoadingBuilder ](https://api.flutter.dev/flutter/widgets/Image/loadingBuilder.html)
* Explain [Column](https://api.flutter.dev/flutter/widgets/Column-class.html) , [Row](https://api.flutter.dev/flutter/widgets/Row-class.html)
    * Create a column of 3 containers with different widths. 
    * [MainAxisAlignment](https://api.flutter.dev/flutter/rendering/MainAxisAlignment.html): (start,center,end,spaceBetween,spaceAround,spaceEvenly)
    * [CrossAxisAlignment](https://api.flutter.dev/flutter/rendering/CrossAxisAlignment.html) : (start,center,end,stretch,baseline)
* Explain [Expanded](https://api.flutter.dev/flutter/widgets/Expanded-class.html)
    * Use it inside a column or row
    * Fill up the remaining space (Horizontally Or Vertically)
    * If all children of column or row are Expanded , the size is divided evenly
    * Explain [Flex ](https://api.flutter.dev/flutter/widgets/Flexible/flex.html)property  (Ratio of current widget in comparison with others)
* Explain [ListView](https://api.flutter.dev/flutter/widgets/ListView-class.html)
    * Increase the height of any container of the 3. And explain the overflow error.
    * Replace column with ListView , (i.e. listview with children array)
    * Mention the [scrollDirection](https://api.flutter.dev/flutter/widgets/ScrollView/scrollDirection.html) property (Axis.horizontal, Axis.vertical)
    * Show the [ListView.Builder](https://api.flutter.dev/flutter/widgets/ListView/ListView.builder.html) , and for item builder use:
        * [ListTile](https://api.flutter.dev/flutter/material/ListTile-class.html)
* Explain [GridView](https://api.flutter.dev/flutter/widgets/GridView-class.html)
    * Mention [gridDelegate ](https://api.flutter.dev/flutter/widgets/GridView/gridDelegate.html): [SliverGridDelegateWithFixedCrossAxisCount](https://api.flutter.dev/flutter/rendering/SliverGridDelegateWithFixedCrossAxisCount-class.html) to specify number of columns in each row
    * In container use the margin property
* Explain [Stack](https://api.flutter.dev/flutter/widgets/Stack-class.html)
    * Create  3 containers with different widths and colors. 
    * Change the alignment: to Alignment.center
* Explain [GestureDetector](https://api.flutter.dev/flutter/widgets/GestureDetector-class.html)
    * Create a container that contains a Text , then Wrap the container inside GestureDetector.
    * use onTap property and show names of the other options of gestures.
* Explain [Clicking Actions](https://docs.flutter.dev/ui/widgets/material#actions)
    * [Common Buttons Types](https://api.flutter.dev/flutter/material/ButtonStyle-class.html?_gl=1*1brzrd1*_ga*NzU1MTQ2NjgxLjE3MjIwMTIxMjE.*_ga_04YGWK0175*MTcyMzk4OTk4Ni4zNy4xLjE3MjM5OTAyMjAuMC4wLjA.#material-3-button-types) 
        * [ElevatedButton](https://api.flutter.dev/flutter/material/ElevatedButton-class.html), 
        * [FilledButton](https://api.flutter.dev/flutter/material/FilledButton-class.html),
        * [OutlinedButton](https://api.flutter.dev/flutter/material/OutlinedButton-class.html),
        * [TextButton](https://api.flutter.dev/flutter/material/TextButton-class.html)
    * [Floating Action Button](https://api.flutter.dev/flutter/material/FloatingActionButton-class.html?_gl=1*nh2jf6*_ga*NzU1MTQ2NjgxLjE3MjIwMTIxMjE.*_ga_04YGWK0175*MTcyMzk4OTk4Ni4zNy4xLjE3MjM5OTA0NzYuMC4wLjA.) , [Extended Floating Action Button](https://api.flutter.dev/flutter/material/FloatingActionButton/FloatingActionButton.extended.html?_gl=1*1x1hvwc*_ga*NzU1MTQ2NjgxLjE3MjIwMTIxMjE.*_ga_04YGWK0175*MTcyMzk4OTk4Ni4zNy4xLjE3MjM5OTA0NzYuMC4wLjA.)
    * [Icon Button](https://api.flutter.dev/flutter/material/IconButton-class.html?_gl=1*3y0nz1*_ga*NzU1MTQ2NjgxLjE3MjIwMTIxMjE.*_ga_04YGWK0175*MTcyMzk4OTk4Ni4zNy4xLjE3MjM5OTA1OTYuMC4wLjA.)
    * [SegmentedButton](https://api.flutter.dev/flutter/material/SegmentedButton-class.html?_gl=1*3y0nz1*_ga*NzU1MTQ2NjgxLjE3MjIwMTIxMjE.*_ga_04YGWK0175*MTcyMzk4OTk4Ni4zNy4xLjE3MjM5OTA1OTYuMC4wLjA.)
* Explain [Theme](https://api.flutter.dev/flutter/material/Theme-class.html?_gl=1*1h2pxtq*_ga*NzU1MTQ2NjgxLjE3MjIwMTIxMjE.*_ga_04YGWK0175*MTcyNDA2MTEwOC40MS4xLjE3MjQwNjExMTYuMC4wLjA.)
    * [ThemeData](https://api.flutter.dev/flutter/material/ThemeData-class.html) , [ThemeData.dark](https://api.flutter.dev/flutter/material/ThemeData/ThemeData.dark.html) ([theme](https://api.flutter.dev/flutter/material/MaterialApp/theme.html), [darkTheme](https://api.flutter.dev/flutter/material/MaterialApp/darkTheme.html) properties in MaterialApp)
        * [colorScheme](https://api.flutter.dev/flutter/material/ThemeData/colorScheme.html),
        * [appBarTheme](https://api.flutter.dev/flutter/material/ThemeData/appBarTheme.html), 
        * [bottomNavigationBarTheme](https://api.flutter.dev/flutter/material/ThemeData/bottomNavigationBarTheme.html),
        * [textTheme](https://api.flutter.dev/flutter/material/ThemeData/textTheme.html) . [Font sizes](https://api.flutter.dev/flutter/material/TextTheme-class.html)
        * [scaffoldBackgroundColor](https://api.flutter.dev/flutter/material/ThemeData/scaffoldBackgroundColor.html)
        * **fontFamily**: name of the font from an assets font file
* **Task1:**
    * **Profile Screen [Figma](https://www.figma.com/design/5ewfZQZFicUbPMEMLhhbYz/Social-App---Free-UI-Kit-%F0%9F%93%B1-(Community)?node-id=1-2382&t=6d3te9yG4jfTfuX6-4)**
    * **Activities Screen [Figma](https://www.figma.com/design/5ewfZQZFicUbPMEMLhhbYz/Social-App---Free-UI-Kit-%F0%9F%93%B1-(Community)?node-id=1-1327&t=d0olI85FCSLbFWiN-4)**


# **<span style="text-decoration:underline;">3. [Navigation](https://docs.flutter.dev/ui/navigation)</span>**

* Navigator and routes
* Clear the main.dart from all code, then inside the lib folder create folder “pages’
* Create 3 dart files ‘page1.dart, page2.dart, page3.dart’  each one is stateless widgets.
* In the main , inside the material app specify the home: to be Page1
* In Page1: 
    * Add an app bar,and a centered button “Go to Page2”
    * On click on button , use [Navigator.push](https://docs.flutter.dev/ui/navigation#using-the-navigator)
* Switch to Routes and Push Named
    * Create 3 pages Home,Settings,Notifications
    * In the main inside the material app , add **routes **: {‘/page2’:(context)=>Page2()}
    * In Page 1 replace Navigator.push with [Navigator.pushNamed](https://docs.flutter.dev/cookbook/navigation/named-routes#3-navigate-to-the-second-screen)
* Bottom Navigation
    * [BottomNavigationBar ](https://api.flutter.dev/flutter/material/BottomNavigationBar-class.html), [BottomNavigationBarItem](https://api.flutter.dev/flutter/widgets/BottomNavigationBarItem-class.html)
    * Create int _currentPageand a List&lt;Widget>_pages, 
    * Inside the scaffold , make body:  _pages[_currentPage]
    * Inside Scaffold use the **bottomNavigationBar **property
    * In the BottomNavigationBar pass **currentIndex**: _currentPage and in to **onTap: **use **setSate **to change the value of _currentPage 
* **Task2: Food Navigation [Figma](https://www.figma.com/design/QBhwON84HbafyJdFlPBvY9/Food-Navigation?node-id=0-1&t=RSmGxu83PZgELYcU-1)**


# **<span style="text-decoration:underline;">4. Stateless VS Stateful</span>**


* Create a new project (default counter) , clear it and rewrite it.
* Start with creating new Stateful Widget CounterScreen
* Mention that any stateful need 
    * Variable to hold the state: like: counter
    * Method to update the state : like setState()
    * UI to respond to state changes
* **Stateful **widget means that a widget can **change **based on the state.
* **Stateless** means that that  widget does not change ever 
* Life Cycle of stateful widget: [article](https://medium.com/@hadiyaaamir222/lifecycle-of-a-stateful-widget-aece2d56c946)
* **Task3: Calculator Screen [Figma](https://www.figma.com/design/EysrhfdyYAESf3VbpD6Jky/Android-Material-You-UI-Kit-(Free)-(Community)-(Community)?node-id=2-2&m=dev)**


# **<span style="text-decoration:underline;">5. [User Input](https://docs.flutter.dev/ui/widgets/input)</span>**


* [Text Inputs](https://docs.flutter.dev/ui/widgets/material#text-inputs)
    * [TextInputField](https://api.flutter.dev/flutter/material/TextField-class.html?_gl=1*hza0z6*_ga*NzU1MTQ2NjgxLjE3MjIwMTIxMjE.*_ga_04YGWK0175*MTcyNDAxNzE1Ny4zOC4xLjE3MjQwMTc0MDcuMC4wLjA.)
        * [TextEditingController](https://api.flutter.dev/flutter/widgets/TextEditingController-class.html)
        * [InputDecoration](https://api.flutter.dev/flutter/material/InputDecoration-class.html)
            * border: [OutlineInputBorder](https://api.flutter.dev/flutter/material/OutlineInputBorder-class.html) , hintText , label
    * [Form](https://api.flutter.dev/flutter/widgets/Form-class.html?_gl=1*qmqq6e*_ga*NzU1MTQ2NjgxLjE3MjIwMTIxMjE.*_ga_04YGWK0175*MTcyNDA5OTg0Ni40NC4wLjE3MjQwOTk4NDYuMC4wLjA.) 
        * inside a form you can use one of the following widgets, to use a validator., 
        * Validator is a lambda that returns a nullable string.If the validator returns string , an error text will be displayed ,but if returned null, it means validation is passed without errors.
        * [FormField](https://api.flutter.dev/flutter/widgets/FormField-class.html)
        * [TextFormField](https://api.flutter.dev/flutter/material/TextFormField-class.html)	
* Create a new project, clear the default code. The app Asks user to enter some info, and click OK, then navigate to another screen to show the inputs added from the previous screen.
  
* **Task4: Todo App [Figma](https://www.figma.com/design/6ZA5YRSMZsMsaC1wnkJAgm/Untitled?node-id=0-1&t=P1ruOj2zfZTmAzV9-1)**
    * Login, 
    * Show list of Items, 
    * Each Item contains checkbox, swipe to delete [Slide to delete package](https://pub.dev/packages/flutter_slidable)
    * There is a floating action button to add a new task , it opens a dialog to enter task details.
    

# **<span style="text-decoration:underline;">6. Reference 9 hours video</span> [Youtube](https://www.youtube.com/watch?v=TclK5gNM_PM)**
