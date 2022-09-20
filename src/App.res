/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 */
open ReactNative

let styles = {
  open Style
  StyleSheet.create({
    "sectionContainer": viewStyle(~marginTop=32.->dp, ~paddingHorizontal=24.->dp, ()),
    "sectionTitle": textStyle(~fontSize=24., ~fontWeight=#_600, ()),
    "sectionDescription": textStyle(~marginTop=8.->dp, ~fontSize=18., ~fontWeight=#_400, ()),
    "highlight": textStyle(~fontWeight=#_700, ()),
  })
}

let useIsDarkMode = () => {
  Appearance.useColorScheme()
  ->Js.Null.toOption
  ->Belt.Option.map(scheme => scheme === #dark)
  ->Belt.Option.getWithDefault(false)
}

@react.component
let app = () => {
  let isDarkMode = useIsDarkMode()
  <SafeAreaView>
    <StatusBar barStyle={isDarkMode ? #lightContent : #darkContent} />
    <ScrollView
      contentInsetAdjustmentBehavior=#automatic
      style={
        open Style
        viewStyle(~backgroundColor=isDarkMode ? "black" : "white", ())
      }>
      <TouchableOpacity onPress={_ => Js.log("rescript")}>
        <Text
          style={
            open Style
            style(~marginTop=8.->dp, ~fontSize=18., ~fontWeight=#_400, ~color="red", ())
          }>
          {"Hello world RN from Rescript"->React.string}
        </Text>
      </TouchableOpacity>
    </ScrollView>
  </SafeAreaView>
}
