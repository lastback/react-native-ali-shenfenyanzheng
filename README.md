
# react-native-ali-shenfenyanzheng

## Getting started

`$ npm install react-native-ali-shenfenyanzheng --save`

### Mostly automatic installation

`$ react-native link react-native-ali-shenfenyanzheng`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-ali-shenfenyanzheng` and add `RNAliShenfenyanzheng.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNAliShenfenyanzheng.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.quenice.cardview.RNAliShenfenyanzhengPackage;` to the imports at the top of the file
  - Add `new RNAliShenfenyanzhengPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-ali-shenfenyanzheng'
  	project(':react-native-ali-shenfenyanzheng').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-ali-shenfenyanzheng/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-ali-shenfenyanzheng')
  	```


## Usage
```javascript
import RNAliShenfenyanzheng from 'react-native-ali-shenfenyanzheng';

// TODO: What to do with the module?
RNAliShenfenyanzheng;
```
  